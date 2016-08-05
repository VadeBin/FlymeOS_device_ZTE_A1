.class Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;
.super Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.source "A2dpSinkService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothA2dpSinkBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .line 175
    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    const-string v1, "A2dpSinkService"

    const-string v2, "A2dp call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->access$000(Lcom/android/bluetooth/a2dp/A2dpSinkService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 184
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 185
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 190
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 214
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object v1

    goto :goto_0
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
    .line 195
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 196
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 208
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 209
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 201
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v0

    .line 202
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
