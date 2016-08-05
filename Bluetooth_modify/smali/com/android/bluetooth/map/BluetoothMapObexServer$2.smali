.class Lcom/android/bluetooth/map/BluetoothMapObexServer$2;
.super Ljava/lang/Object;
.source "BluetoothMapObexServer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapObexServer;->showSubSelectDialog(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

.field final synthetic val$appParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

.field final synthetic val$bMsgStream:Ljava/io/InputStream;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$message:Lcom/android/bluetooth/map/BluetoothMapbMessage;

.field final synthetic val$observer:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field final synthetic val$op:Ljavax/obex/Operation;

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljava/util/List;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$subInfoList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$op:Ljavax/obex/Operation;

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$folderName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$appParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$message:Lcom/android/bluetooth/map/BluetoothMapbMessage;

    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$observer:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iput-object p8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$bMsgStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1254
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$subInfoList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    int-to-long v0, v2

    .line 1255
    .local v0, "subId":J
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer$2$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer$2;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1262
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1263
    return-void
.end method
