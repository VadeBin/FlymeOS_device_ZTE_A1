.class public Lcom/android/bluetooth/hfp/HeadsetService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field private static final TAG:Ljava/lang/String; = "HeadsetService"

.field private static sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;


# instance fields
.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 98
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetService$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfp/HeadsetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfp/HeadsetService;[I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # [I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChanged(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hfp/HeadsetService;->clccResponse(IIIIZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private clccResponse(IIIIZLjava/lang/String;I)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "status"    # I
    .param p4, "mode"    # I
    .param p5, "mpty"    # Z
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "type"    # I

    .prologue
    .line 526
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v8, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v9, 0xc

    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetClccResponse;-><init>(IIIIZLjava/lang/String;I)V

    invoke-virtual {v8, v9, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 529
    return-void
.end method

.method private static declared-synchronized clearHeadsetService()V
    .locals 2

    .prologue
    .line 332
    const-class v0, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit v0

    return-void

    .line 332
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
    .line 381
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 4

    .prologue
    .line 302
    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "HeadsetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeadsetService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    monitor-exit v1

    return-object v0

    .line 307
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-nez v0, :cond_2

    .line 308
    const-string v0, "HeadsetService"

    const-string v2, "getHeadsetService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_2
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    const-string v0, "HeadsetService"

    const-string v2, "getHeadsetService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private phoneStateChanged(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 517
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 519
    .local v6, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetCallState;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetCallState;-><init>(IIILjava/lang/String;I)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 520
    const/4 v0, 0x0

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 521
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 522
    return-void
.end method

.method private sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 534
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 536
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 546
    :goto_0
    return v1

    .line 540
    :cond_0
    const-string v2, "+ANDROID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 541
    const-string v2, "HeadsetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed unsolicited result code command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v2, 0xd

    new-instance v3, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 546
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized setHeadsetService(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 317
    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const-string v0, "HeadsetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeadsetService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sput-object p0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 322
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-nez v0, :cond_2

    .line 323
    const-string v0, "HeadsetService"

    const-string v2, "setHeadsetService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 324
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const-string v0, "HeadsetService"

    const-string v2, "setHeadsetService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->cleanup()V

    .line 94
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->clearHeadsetService()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 336
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 344
    .local v0, "connectionState":I
    const-string v3, "HeadsetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectionState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 351
    const-string v1, "HeadsetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    move v1, v2

    .line 355
    goto :goto_0
.end method

.method connectAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 466
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(I)V

    .line 474
    const/4 v0, 0x1

    goto :goto_0
.end method

.method disableWBS()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 568
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v2

    .line 572
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 576
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 578
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 359
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 362
    .local v0, "connectionState":I
    if-eq v0, v5, :cond_0

    if-eq v0, v1, :cond_0

    .line 364
    const/4 v1, 0x0

    .line 372
    :goto_0
    return v1

    .line 368
    :cond_0
    const-string v2, "HeadsetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, v5, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method disconnectAudio()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 479
    const-string v0, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 492
    :goto_0
    return v0

    .line 489
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(I)V

    .line 492
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 583
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 584
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 587
    :cond_0
    return-void
.end method

.method enableWBS()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 551
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v2

    .line 555
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 560
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 563
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 447
    const/4 v0, 0x0

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
    .line 376
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 386
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "HeadsetService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 401
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 406
    .local v0, "priority":I
    return v0
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    return-object v0
.end method

.method isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 441
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method isAudioOn()Z
    .locals 2

    .prologue
    .line 436
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v0

    return v0
.end method

.method rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 391
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    const-string v0, "HeadsetService"

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

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 4

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->make(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->setHeadsetService(Lcom/android/bluetooth/hfp/HeadsetService;)V

    .line 77
    const/4 v2, 0x1

    return v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HeadsetService"

    const-string v3, "Unable to register headset receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 496
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 497
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 499
    const/4 v1, 0x0

    .line 502
    :goto_0
    return v1

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 410
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 412
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 414
    const/4 v1, 0x0

    .line 417
    :goto_0
    return v1

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->doQuit()V

    .line 87
    const/4 v1, 0x1

    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HeadsetService"

    const-string v2, "Unable to unregister headset receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 507
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 509
    const/4 v1, 0x0

    .line 512
    :goto_0
    return v1

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 421
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 426
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 428
    const/4 v1, 0x0

    .line 432
    :goto_0
    return v1

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
