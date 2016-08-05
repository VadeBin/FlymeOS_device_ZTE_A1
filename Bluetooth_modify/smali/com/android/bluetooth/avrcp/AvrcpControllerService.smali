.class public Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MESSAGE_SEND_PASS_THROUGH_CMD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AvrcpControllerService"

.field private static sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# instance fields
.field private final mConnectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->classInitNative()V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->initNative()V

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCommandNative([BII)Z

    move-result v0

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAvrcpControllerService()V
    .locals 2

    .prologue
    .line 145
    const-class v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvrcpControllerService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .locals 4

    .prologue
    .line 114
    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvrcpControllerService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit v1

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-nez v0, :cond_2

    .line 121
    const-string v0, "AvrcpControllerService"

    const-string v2, "getAvrcpControllerService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_2
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const-string v0, "AvrcpControllerService"

    const-string v2, "getAvrcpControllerService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private handlePassthroughRsp(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "keyState"    # I

    .prologue
    .line 273
    const-string v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passthrough response received as: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private native initNative()V
.end method

.method private onConnectionStateChanged(Z[B)V
    .locals 8
    .param p1, "connected"    # Z
    .param p2, "address"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 252
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 254
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "AvrcpControllerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConnectionStateChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.bluetooth.acrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 258
    .local v3, "oldState":I
    :goto_0
    if-eqz p1, :cond_0

    move v2, v4

    .line 260
    .local v2, "newState":I
    :cond_0
    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v5}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 265
    if-eqz p1, :cond_3

    if-nez v3, :cond_3

    .line 266
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    :goto_1
    return-void

    .end local v2    # "newState":I
    .end local v3    # "oldState":I
    :cond_2
    move v3, v2

    .line 256
    goto :goto_0

    .line 267
    .restart local v2    # "newState":I
    .restart local v3    # "oldState":I
    :cond_3
    if-nez p1, :cond_1

    if-ne v3, v4, :cond_1

    .line 268
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private native sendPassThroughCommandNative([BII)Z
.end method

.method private static declared-synchronized setAvrcpControllerService(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 130
    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAvrcpControllerService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sput-object p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 135
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-nez v0, :cond_2

    .line 136
    const-string v0, "AvrcpControllerService"

    const-string v2, "setAvrcpControllerService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 137
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "AvrcpControllerService"

    const-string v2, "setAvrcpControllerService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 4

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 100
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 104
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->clearAvrcpControllerService()V

    .line 106
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->cleanupNative()V

    .line 108
    const/4 v2, 0x1

    return v2

    .line 95
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "AvrcpControllerService"

    const-string v3, "[cleanup] exception happen while removeCallbacksAndMessages"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 284
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
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
    .line 149
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 164
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
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
    .line 154
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 156
    aget v1, p1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    .line 160
    :goto_1
    return-object v1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "AvrcpControllerService"

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    return-object v0
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .prologue
    .line 170
    const-string v1, "AvrcpControllerService"

    const-string v2, "sendPassThroughCmd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "device == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method protected start()Z
    .locals 4

    .prologue
    .line 76
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BluetoothAvrcpHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 78
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 79
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    .line 81
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setAvrcpControllerService(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    .line 82
    const/4 v2, 0x1

    return v2
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method
