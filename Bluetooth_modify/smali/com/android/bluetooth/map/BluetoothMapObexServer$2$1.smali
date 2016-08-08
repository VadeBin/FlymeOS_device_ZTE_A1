.class Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;
.super Ljava/lang/Object;
.source "BluetoothMapObexServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

.field final synthetic val$subId:J


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapObexServer$2;J)V
    .locals 0

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->val$subId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1258
    const-string v0, "[MAP]BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showSubSelectDialog] sendMessage enter: subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->val$subId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$op:Ljavax/obex/Operation;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$folderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$appParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$message:Lcom/android/bluetooth/map/BluetoothMapbMessage;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$observer:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$bMsgStream:Ljava/io/InputStream;

    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;->val$subId:J

    # invokes: Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I
    invoke-static/range {v1 .. v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->access$000(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I

    .line 1260
    return-void
.end method
