.class Lcom/android/bluetooth/btservice/AdapterProperties;
.super Ljava/lang/Object;
.source "AdapterProperties.java"


# static fields
.field private static final BD_ADDR_LEN:I = 0x6

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterProperties"

.field private static final VDBG:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAddress:[B

.field private mBluetoothClass:I

.field private mBluetoothDisabling:Z

.field private mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:I

.field private mDiscoverableTimeout:I

.field private mDiscovering:Z

.field private mIsActivityAndEnergyReporting:Z

.field private mName:Ljava/lang/String;

.field private mNumOfAdvertisementInstancesSupported:I

.field private mNumOfOffloadedIrkSupported:I

.field private mNumOfOffloadedScanFilterSupported:I

.field private mObject:Ljava/lang/Object;

.field private mOffloadedScanResultStorageBytes:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mRpaOffloadSupported:Z

.field private mScanMode:I

.field private mService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mState:I

.field private mUuids:[Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    .line 651
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 81
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 82
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 83
    return-void
.end method

.method private convertToAdapterState(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_0

    .line 414
    const-string v0, "BluetoothAdapterProperties"

    const-string v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 406
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 410
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 412
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 686
    const-string v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 690
    const-string v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 682
    const-string v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 5
    .param p1, "state"    # I
    .param p2, "prevState"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCountersAndCheckForConnectionStateChange: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prevState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before Update: mProfilesConnecting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mProfilesConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mProfilesDisconnecting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "ret":Z
    packed-switch p2, :pswitch_data_0

    .line 437
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 454
    const/4 v0, 0x1

    .line 457
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": mProfilesConnecting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfilesConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfilesDisconnecting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 459
    return v0

    .line 425
    :pswitch_0
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    goto :goto_0

    .line 429
    :pswitch_1
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    goto :goto_0

    .line 433
    :pswitch_2
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    goto :goto_0

    .line 439
    :pswitch_3
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    .line 440
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 441
    :goto_2
    goto :goto_1

    :cond_0
    move v0, v2

    .line 440
    goto :goto_2

    .line 443
    :pswitch_4
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    .line 444
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 445
    :goto_3
    goto :goto_1

    :cond_1
    move v0, v2

    .line 444
    goto :goto_3

    .line 447
    :pswitch_5
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    .line 448
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 449
    :goto_4
    goto :goto_1

    :cond_2
    move v0, v2

    .line 448
    goto :goto_4

    .line 451
    :pswitch_6
    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-nez v3, :cond_3

    move v0, v1

    .line 452
    :goto_5
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 451
    goto :goto_5

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 437
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .locals 10
    .param p1, "profile"    # I
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 468
    const/4 v2, 0x1

    .line 469
    .local v2, "numDev":I
    move v1, p2

    .line 470
    .local v1, "newHashState":I
    const/4 v4, 0x1

    .line 482
    .local v4, "update":Z
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 483
    .local v3, "stateNumDev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 484
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    .local v0, "currHashState":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 487
    if-ne p2, v0, :cond_2

    .line 488
    add-int/lit8 v2, v2, 0x1

    .line 507
    .end local v0    # "currHashState":I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 508
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_1
    return-void

    .line 489
    .restart local v0    # "currHashState":I
    :cond_2
    if-eq p2, v8, :cond_3

    if-ne p2, v7, :cond_4

    if-eq v0, v8, :cond_4

    .line 492
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 493
    :cond_4
    if-ne v2, v7, :cond_5

    if-ne p3, v0, :cond_5

    .line 494
    const/4 v4, 0x1

    goto :goto_0

    .line 495
    :cond_5
    if-le v2, v7, :cond_7

    if-ne p3, v0, :cond_7

    .line 496
    add-int/lit8 v2, v2, -0x1

    .line 498
    if-eq v0, v8, :cond_6

    if-ne v0, v7, :cond_0

    .line 500
    :cond_6
    move v1, v0

    goto :goto_0

    .line 503
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private validateProfileConnectionState(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 396
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method adapterPropertyChangedCallback([I[[B)V
    .locals 12
    .param p1, "types"    # [I
    .param p2, "values"    # [[B

    .prologue
    .line 517
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_1

    .line 518
    aget-object v7, p2, v1

    .line 519
    .local v7, "val":[B
    aget v6, p1, v1

    .line 520
    .local v6, "type":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adapterPropertyChangedCallback with type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 521
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v9

    .line 523
    :try_start_0
    const-string v8, "adapterPropertyChangedCallback: Acquire Lock - AdapterProperties.mObject"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 524
    packed-switch v6, :pswitch_data_0

    .line 584
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Property change not handled in Java land:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 586
    :cond_0
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    const-string v8, "adapterPropertyChangedCallback: Release Lock - AdapterProperties.mObject"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :pswitch_1
    :try_start_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    .line 527
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "android.bluetooth.adapter.extra.LOCAL_NAME"

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const/high16 v8, 0x4000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    const-string v8, "Send Broadcast: Adapter Name"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 532
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v11, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v2, v10, v11}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Name is: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 586
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 537
    :pswitch_2
    :try_start_2
    iput-object v7, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Address is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    invoke-static {v10}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 541
    :pswitch_3
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BT Class:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 545
    :pswitch_4
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v4

    .line 546
    .local v4, "mode":I
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeFromHal(I)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    .line 547
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "android.bluetooth.adapter.extra.SCAN_MODE"

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    const/high16 v8, 0x4000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    const-string v8, "Send Broadcast: Scan Mode"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 552
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v2, v10}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 553
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scan Mode:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 554
    iget-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    if-eqz v8, :cond_0

    .line 555
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 556
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterService;->startBluetoothDisable()V

    goto/16 :goto_1

    .line 560
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mode":I
    :pswitch_5
    invoke-static {v7}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adapter UUID:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 564
    :pswitch_6
    array-length v8, v7

    div-int/lit8 v5, v8, 0x6

    .line 565
    .local v5, "number":I
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 566
    .local v0, "addrByte":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 567
    mul-int/lit8 v8, v3, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v7, v8, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 568
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    const/16 v10, 0xc

    invoke-virtual {p0, v8, v10}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 571
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bonded Device #"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 566
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 575
    .end local v0    # "addrByte":[B
    .end local v3    # "j":I
    .end local v5    # "number":I
    :pswitch_7
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    .line 576
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discoverable Timeout:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 580
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateFeatureSupport([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 590
    .end local v6    # "type":I
    .end local v7    # "val":[B
    :cond_1
    return-void

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    .line 99
    :cond_0
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 102
    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method discoveryStateChangeCallback(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback:discoveryStateChangeCallback with state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 667
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 669
    if-nez p1, :cond_1

    .line 670
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 678
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 679
    return-void

    .line 673
    :cond_1
    if-ne p1, v3, :cond_0

    .line 674
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAddress()[B
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddress: mAddress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    monitor-exit v1

    return-object v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBluetoothClass()I
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBluetoothClass: mBluetoothClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    monitor-exit v1

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 281
    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    .line 282
    .local v1, "bondedDeviceList":[Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :goto_0
    return-object v3

    .line 287
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBondedDevices: length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    monitor-exit v4

    move-object v3, v1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "ee":Ljava/lang/ArrayStoreException;
    const-string v3, "Error retrieving bonded device array"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 292
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    monitor-exit v4

    goto :goto_0

    .line 294
    .end local v2    # "ee":Ljava/lang/ArrayStoreException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method getConnectionState()I
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState: mConnectionState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 213
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    monitor-exit v1

    return v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDiscoverableTimeout()I
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDiscoverableTimeout: mDiscoverableTimeout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    monitor-exit v1

    return v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName: mName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNumOfAdvertisementInstancesSupported()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    return v0
.end method

.method getNumOfOffloadedIrkSupported()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    return v0
.end method

.method getNumOfOffloadedScanFilterSupported()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    return v0
.end method

.method getOffloadedScanResultStorage()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    return v0
.end method

.method getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileConnectionState: profile = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 348
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    .line 349
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 350
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getScanMode()I
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScanMode: mScanMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    monitor-exit v1

    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUuids: mUuids = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1
    .param p1, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    .line 90
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 91
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method isActivityAndEnergyReportingSupported()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    return v0
.end method

.method isDiscovering()Z
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDiscovering: mDiscovering = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 356
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    monitor-exit v1

    return v0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isRpaOffloadSupported()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    return v0
.end method

.method onBluetoothDisable()V
    .locals 2

    .prologue
    .line 659
    const-string v0, "onBluetoothDisable()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 661
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 664
    :cond_0
    return-void
.end method

.method onBluetoothReady()V
    .locals 3

    .prologue
    .line 630
    const-string v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanMode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    .line 641
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 646
    :goto_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    .line 648
    :cond_0
    monitor-exit v1

    .line 649
    return-void

    .line 644
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 300
    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 304
    .local v0, "addrByte":[B
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 305
    .local v2, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v2, :cond_2

    .line 306
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 307
    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondState(I)V

    .line 309
    const/16 v3, 0xc

    if-ne p2, v3, :cond_3

    .line 311
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding bonded device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v0    # "addrByte":[B
    .end local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :catch_0
    move-exception v1

    .line 324
    .local v1, "ee":Ljava/lang/Exception;
    const-string v3, "BluetoothAdapterProperties"

    const-string v4, "Exception in onBondStateChanged : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 315
    .end local v1    # "ee":Ljava/lang/Exception;
    .restart local v0    # "addrByte":[B
    .restart local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :cond_3
    const/16 v3, 0xa

    if-ne p2, v3, :cond_0

    .line 317
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing bonded device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 361
    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 373
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendConnectionStateChange: device = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", profile = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateProfileConnectionState(III)V

    .line 377
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 389
    const-string v1, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECTION_STATE_CHANGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setConnectionState(I)V
    .locals 3
    .param p1, "mConnectionState"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionState: mConnectionState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 203
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDiscoverableTimeout(I)Z
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDiscoverableTimeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 v2, 0x9

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setScanMode(I)Z
    .locals 4
    .param p1, "scanMode"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScanMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x7

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setState(I)V
    .locals 3
    .param p1, "mState"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 223
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setUuids([Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUuids: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->uuidsToByteArray([Landroid/os/ParcelUuid;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateFeatureSupport([B)V
    .locals 4
    .param p1, "val"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 593
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    .line 594
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    .line 595
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    .line 596
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    .line 597
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    .line 599
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    .line 601
    const-string v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_PROPERTY_LOCAL_LE_FEATURES: update from BT controller mNumOfAdvertisementInstancesSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRpaOffloadSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNumOfOffloadedIrkSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNumOfOffloadedScanFilterSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOffloadedScanResultStorageBytes= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsActivityAndEnergyReporting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v0, "bluetooth.fw.adv.num"

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "bluetooth.fw.irk.num"

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "bluetooth.fw.scanfilter.num"

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "bluetooth.fw.scanresult.size"

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "bluetooth.fw.rpa"

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "bluetooth.fw.energyreport"

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void

    :cond_0
    move v0, v2

    .line 594
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 599
    goto/16 :goto_1
.end method
