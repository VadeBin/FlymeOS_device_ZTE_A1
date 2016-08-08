.class public Lcom/android/bluetooth/a2dp/A2dpSinkService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpSinkService"

.field private static sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;


# instance fields
.field private mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/a2dp/A2dpSinkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized clearA2dpSinkService()V
    .locals 2

    .prologue
    .line 106
    const-class v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .locals 4

    .prologue
    .line 76
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "A2dpSinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2dpSinkService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit v1

    return-object v0

    .line 81
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-nez v0, :cond_2

    .line 82
    const-string v0, "A2dpSinkService"

    const-string v2, "getA2dpSinkService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const-string v0, "A2dpSinkService"

    const-string v2, "getA2dpSinkService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setA2dpSinkService(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .prologue
    .line 91
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpSinkService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "A2dpSinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setA2dpSinkService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sput-object p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 96
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    if-nez v0, :cond_2

    .line 97
    const-string v0, "A2dpSinkService"

    const-string v2, "setA2dpSinkService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 98
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "A2dpSinkService"

    const-string v2, "setA2dpSinkService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->cleanup()V

    .line 69
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->clearA2dpSinkService()V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 110
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 114
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 120
    :goto_0
    return v1

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v2, v1, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 124
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 127
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 133
    :goto_0
    return v1

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v2, v4, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 225
    :cond_0
    return-void
.end method

.method getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 152
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object v0

    return-object v0
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
    .line 137
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 147
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 142
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "A2dpSinkService"

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService$BluetoothA2dpSinkBinder;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V

    return-object v0
.end method

.method protected start()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->make(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .line 56
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->setA2dpSinkService(Lcom/android/bluetooth/a2dp/A2dpSinkService;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->doQuit()V

    .line 62
    const/4 v0, 0x1

    return v0
.end method
