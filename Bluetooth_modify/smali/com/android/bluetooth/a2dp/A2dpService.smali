.class public Lcom/android/bluetooth/a2dp/A2dpService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpService"

.field private static sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;


# instance fields
.field private mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

.field private mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/a2dp/A2dpService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpService;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized clearA2dpService()V
    .locals 2

    .prologue
    .line 121
    const-class v0, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v0

    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 4

    .prologue
    .line 91
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2DPService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    monitor-exit v1

    return-object v0

    .line 96
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v0, :cond_2

    .line 97
    const-string v0, "A2dpService"

    const-string v2, "getA2dpService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const-string v0, "A2dpService"

    const-string v2, "getA2dpService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/a2dp/A2dpService;

    .prologue
    .line 106
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setA2dpService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sput-object p0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 111
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v0, :cond_2

    .line 112
    const-string v0, "A2dpService"

    const-string v2, "setA2dpService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 113
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "A2dpService"

    const-string v2, "setA2dpService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public adjustAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->adjustVolume(I)V

    .line 199
    return-void
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanup()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->cleanup()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 84
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->clearA2dpService()V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 125
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin to connect , dev "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 133
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    move v1, v2

    .line 139
    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 143
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to disconnect , dev "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->log(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 149
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 312
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->dump(Ljava/lang/StringBuilder;)V

    .line 318
    :cond_1
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
    .line 159
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 169
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
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
    .line 164
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "A2dpService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 184
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, "priority":I
    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;)V

    return-object v0
.end method

.method declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isA2dpPlaying("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v0

    return v0
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->setAbsoluteVolume(I)V

    .line 203
    return-void
.end method

.method public setAvrcpAudioState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->setA2dpAudioState(I)V

    .line 207
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 174
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    const-string v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->make(Landroid/content/Context;)Lcom/android/bluetooth/avrcp/Avrcp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 61
    invoke-static {p0, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 62
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->doQuit()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->doQuit()V

    .line 73
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
