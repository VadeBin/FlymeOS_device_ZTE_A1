.class Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;
.super Landroid/bluetooth/IBluetoothAvrcpController$Stub;
.source "AvrcpControllerService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothAvrcpControllerBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 200
    return-void
.end method

.method private getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string v1, "AvrcpControllerService"

    const-string v2, "AVRCP call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    # invokes: Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->access$100(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 209
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 221
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 222
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 215
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .prologue
    .line 226
    const-string v1, "AvrcpControllerService"

    const-string v2, "Binder Call: sendPassThroughCmd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    .line 228
    .local v0, "service":Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method
