.class Lcom/android/bluetooth/btservice/AdapterService$1;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterService;->sendUuidDelay(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$sendUuidHandlerThread:Landroid/os/HandlerThread;

.field final synthetic val$uuids:[Landroid/os/ParcelUuid;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->val$uuids:[Landroid/os/ParcelUuid;

    iput-object p4, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->val$sendUuidHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v2, "run in InitPrioritiesThread, delay 1s"

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    const-string v1, "android.bluetooth.device.extra.UUID"

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->val$uuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->val$sendUuidHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 263
    return-void
.end method
