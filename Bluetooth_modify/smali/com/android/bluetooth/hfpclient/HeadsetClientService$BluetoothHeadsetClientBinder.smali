.class Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;
.super Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.source "HeadsetClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetClientBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 127
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    const-string v1, "HeadsetClientService"

    const-string v2, "HeadsetClient call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 276
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 231
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 150
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public connectAudio()Z
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 258
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 261
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 339
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 340
    const/4 v1, 0x0

    .line 342
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 348
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 351
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 159
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnectAudio()Z
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 267
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 270
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 321
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 324
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 312
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 315
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 249
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 252
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

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
    .line 167
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 168
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 186
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 384
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 387
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 393
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 394
    const/4 v1, 0x0

    .line 396
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 357
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

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
    .line 176
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 177
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    :goto_0
    return-object v1

    :cond_0
    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->access$200(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 375
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 376
    const/4 v1, 0x0

    .line 378
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 204
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 205
    const/4 v1, -0x1

    .line 207
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 294
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 297
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 330
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 333
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 285
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 286
    const/4 v1, 0x0

    .line 288
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 240
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 243
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 366
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 369
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 195
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 198
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 213
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 216
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 222
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 303
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    if-nez v0, :cond_0

    .line 304
    const/4 v1, 0x0

    .line 306
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method
