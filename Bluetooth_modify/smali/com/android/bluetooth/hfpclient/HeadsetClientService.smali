.class public Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HeadsetClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HeadsetClientService"

.field private static sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 96
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .param p1, "x1"    # [I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized clearHeadsetClientService()V
    .locals 2

    .prologue
    .line 436
    const-class v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit v0

    return-void

    .line 436
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDevicesMatchingConnectionStates([I)Ljava/util/List;
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
    .line 476
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 2

    .prologue
    .line 402
    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    .line 419
    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    sput-object p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_0
    monitor-exit v1

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 580
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 582
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 584
    const/4 v2, 0x0

    .line 589
    :goto_0
    return v2

    .line 586
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 587
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 588
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->cleanup()V

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->clearHeadsetClientService()V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 440
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 447
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 448
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    move v1, v2

    .line 454
    goto :goto_0
.end method

.method connectAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 547
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 555
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 647
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 649
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 651
    const/4 v2, 0x0

    .line 657
    :goto_0
    return v2

    .line 654
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 655
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    const/4 v2, 0x1

    .line 661
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 663
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 665
    const/4 v2, 0x0

    .line 670
    :goto_0
    return v2

    .line 667
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 668
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 669
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 458
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 461
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 467
    :goto_0
    return v1

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v4, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method disconnectAudio()Z
    .locals 2

    .prologue
    .line 559
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 564
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 740
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 741
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 744
    :cond_0
    return-void
.end method

.method enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 620
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 622
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 624
    const/4 v2, 0x0

    .line 630
    :goto_0
    return v2

    .line 627
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 628
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 629
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 708
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 710
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 712
    const/4 v2, 0x0

    .line 717
    :goto_0
    return v2

    .line 714
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 716
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
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
    .line 471
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 481
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 721
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 723
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 724
    const/4 v1, 0x0

    .line 726
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgEvents()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 730
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 732
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 733
    const/4 v1, 0x0

    .line 735
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgFeatures()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 3
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
    .line 699
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 701
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 702
    const/4 v1, 0x0

    .line 704
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentCalls()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 687
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 689
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 691
    const/4 v2, 0x0

    .line 695
    :goto_0
    return v2

    .line 693
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 694
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "HeadsetClientService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 499
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 504
    .local v0, "priority":I
    return v0
.end method

.method holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 568
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 570
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 572
    const/4 v2, 0x0

    .line 576
    :goto_0
    return v2

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 575
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    return-object v0
.end method

.method redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 634
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 636
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 638
    const/4 v2, 0x0

    .line 643
    :goto_0
    return v2

    .line 641
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 642
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 593
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 595
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 597
    const/4 v2, 0x0

    .line 602
    :goto_0
    return v2

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 601
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    const/4 v2, 0x1

    .line 674
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 676
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 678
    const/4 v2, 0x0

    .line 683
    :goto_0
    return v2

    .line 680
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 681
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 682
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 487
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 4

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    .line 73
    const/4 v2, 0x1

    return v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HeadsetClientService"

    const-string v3, "Unable to register broadcat receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 508
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 510
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 512
    const/4 v1, 0x0

    .line 515
    :goto_0
    return v1

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->doQuit()V

    .line 84
    const/4 v1, 0x1

    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HeadsetClientService"

    const-string v2, "Unable to unregister broadcast receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 519
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 524
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 526
    const/4 v1, 0x0

    .line 529
    :goto_0
    return v1

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 606
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 608
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 610
    const/4 v2, 0x0

    .line 616
    :goto_0
    return v2

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 614
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 615
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
