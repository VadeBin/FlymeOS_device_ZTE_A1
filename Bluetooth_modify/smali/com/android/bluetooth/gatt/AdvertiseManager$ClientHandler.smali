.class Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;
.super Landroid/os/Handler;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 175
    return-void
.end method

.method private handleStartAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$200(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 197
    iget v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    .line 198
    .local v0, "clientIf":I
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$300(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const/4 v2, 0x3

    # invokes: Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$400(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    .line 214
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$300(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->maxAdvertiseInstances()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const/4 v2, 0x2

    # invokes: Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$400(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$500(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->startAdverising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const/4 v2, 0x4

    # invokes: Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$400(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$300(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$400(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    goto :goto_0
.end method

.method private handleStopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$200(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 219
    if-nez p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop advertise for client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$100(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$500(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 224
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->appDied:Z

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app died - unregistering client : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$100(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$200(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$300(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$300(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$100(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    .line 181
    .local v0, "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 190
    const-string v1, "BtGatt.AdvertiseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recieve an unknown message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->handleStartAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->handleStopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method maxAdvertiseInstances()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$600(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$600(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 244
    :goto_0
    return v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    # getter for: Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$600(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isPeripheralModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
