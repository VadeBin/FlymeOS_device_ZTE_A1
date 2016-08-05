.class public Lcom/android/bluetooth/pan/PanService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;,
        Lcom/android/bluetooth/pan/PanService$ConnectState;,
        Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;
    }
.end annotation


# static fields
.field private static final ACTION_NETWORK_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_MAX_PAN_CONNECTIONS:I = 0x5

.field private static final BLUETOOTH_PREFIX_LENGTH:I = 0x18

.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final DBG:Z = true

.field private static final MESSAGE_CONNECT:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0xb

.field private static final MESSAGE_DISCONNECT:I = 0x2

.field private static final MESSAGE_DISPLAY:Ljava/lang/String; = "show toast"

.field private static final MESSAGE_DISPLAY_TOAST:I = 0x64

.field private static final TAG:Ljava/lang/String; = "[BT][PAN][PanService]"


# instance fields
.field private mBluetoothIfaceAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocalPanuConnected:Z

.field private mMaxPanDevices:I

.field private mNativeAvailable:Z

.field private mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

.field private mPanDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPanIfName:Ljava/lang/String;

.field private mTetherOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 102
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->classInitNative()V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mLocalPanuConnected:Z

    .line 199
    new-instance v0, Lcom/android/bluetooth/pan/PanService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$1;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    .line 750
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pan/PanService;[BII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pan/PanService;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService;
    .param p1, "x1"    # [B

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService;
    .param p1, "x1"    # [B

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectPanNative([BII)Z
.end method

.method private static convertHalState(I)I
    .locals 4
    .param p0, "halState"    # I

    .prologue
    const/4 v0, 0x0

    .line 473
    packed-switch p0, :pswitch_data_0

    .line 483
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad pan connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    :pswitch_0
    return v0

    .line 475
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 477
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private createNewTetheringAddressLocked()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 643
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    if-ne v3, v4, :cond_0

    .line 644
    const-string v3, "[BT][PAN][PanService]"

    const-string v4, "[createNewTetheringAddressLocked] Max PAN device connections reached"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v1, 0x0

    .line 658
    :goto_0
    return-object v1

    .line 647
    :cond_0
    const-string v1, "192.168.44.1"

    .line 649
    .local v1, "address":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "addr":[Ljava/lang/String;
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 652
    .local v2, "newIp":Ljava/lang/Integer;
    aget-object v3, v0, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 653
    goto :goto_1

    .line 657
    .end local v0    # "addr":[Ljava/lang/String;
    .end local v2    # "newIp":Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private native disconnectPanNative([B)Z
.end method

.method private native enablePanNative(I)Z
.end method

.method private enableTethering(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 578
    const-string v17, "[BT][PAN][PanService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[enableTethering] updateTetherState:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 581
    .local v5, "b":Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v16

    .line 582
    .local v16, "service":Landroid/os/INetworkManagementService;
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 584
    .local v7, "cm":Landroid/net/ConnectivityManager;
    if-nez v7, :cond_1

    .line 585
    const-string v17, "[BT][PAN][PanService]"

    const-string v18, "[enableTethering] ConnectivityManager is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v3, 0x0

    .line 639
    :cond_0
    :goto_0
    return-object v3

    .line 588
    :cond_1
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "bluetoothRegexs":[Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 593
    .local v9, "currentIfaces":[Ljava/lang/String;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 599
    const/4 v11, 0x0

    .line 600
    .local v11, "found":Z
    move-object v4, v9

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_2

    aget-object v8, v4, v12

    .line 601
    .local v8, "currIface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 602
    const/4 v11, 0x1

    .line 606
    .end local v8    # "currIface":Ljava/lang/String;
    :cond_2
    const-string v17, "[BT][PAN][PanService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[enableTethering] found : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-nez v11, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    .line 594
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "found":Z
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    :catch_0
    move-exception v10

    .line 595
    .local v10, "e":Ljava/lang/Exception;
    const-string v17, "[BT][PAN][PanService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[enableTethering] Error listing Interfaces :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v3, 0x0

    goto :goto_0

    .line 600
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "currIface":Ljava/lang/String;
    .restart local v11    # "found":Z
    .restart local v12    # "i$":I
    .restart local v14    # "len$":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 609
    .end local v8    # "currIface":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->createNewTetheringAddressLocked()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "address":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 611
    const-string v17, "[BT][PAN][PanService]"

    const-string v18, "[enableTethering] address is null, just return!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v3, 0x0

    goto :goto_0

    .line 615
    :cond_5
    const/4 v13, 0x0

    .line 617
    .local v13, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v13

    .line 618
    if-eqz v13, :cond_0

    .line 619
    const/4 v2, 0x0

    .line 620
    .local v2, "addr":Ljava/net/InetAddress;
    invoke-virtual {v13}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v15

    .line 621
    .local v15, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v17, "0.0.0.0"

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "::0"

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 624
    :cond_6
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 626
    :cond_7
    invoke-virtual {v13}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 627
    new-instance v17, Landroid/net/LinkAddress;

    const/16 v18, 0x18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 628
    const-string v17, "running"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 631
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_0

    .line 632
    const-string v17, "[BT][PAN][PanService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[enableTethering] Error tethering "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 635
    .end local v2    # "addr":Ljava/net/InetAddress;
    .end local v15    # "linkAddr":Landroid/net/LinkAddress;
    :catch_1
    move-exception v10

    .line 636
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v17, "[BT][PAN][PanService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[enableTethering] Error configuring interface "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private getConnectedPanDevices()Ljava/util/List;
    .locals 6
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
    .line 662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 665
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pan/PanService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 666
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const-string v3, "[BT][PAN][PanService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getConnectedPanDevices] devices list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-object v1
.end method

.method private getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 675
    .local v0, "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    if-nez v0, :cond_0

    .line 676
    const/4 v1, 0x0

    .line 678
    :goto_0
    return v1

    :cond_0
    # getter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$700(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v1

    goto :goto_0
.end method

.method private native getPanLocalRoleNative()I
.end method

.method private native initializeNative()V
.end method

.method private onConnectStateChanged([BIIII)V
    .locals 7
    .param p1, "address"    # [B
    .param p2, "state"    # I
    .param p3, "error"    # I
    .param p4, "local_role"    # I
    .param p5, "remote_role"    # I

    .prologue
    .line 454
    const-string v0, "[BT][PAN][PanService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConnectStateChanged] address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", local role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remote_role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 461
    .local v6, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/bluetooth/pan/PanService$ConnectState;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService$ConnectState;-><init>([BIIII)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    return-void
.end method

.method private onControlStateChanged(IIILjava/lang/String;)V
    .locals 3
    .param p1, "local_role"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I
    .param p4, "ifname"    # Ljava/lang/String;

    .prologue
    .line 466
    const-string v0, "[BT][PAN][PanService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onControlStateChanged] local_role : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ifname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-nez p3, :cond_0

    .line 469
    iput-object p4, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    .line 470
    :cond_0
    return-void
.end method


# virtual methods
.method protected cleanup()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 148
    const-string v0, "[BT][PAN][PanService]"

    const-string v2, "[cleanup] enter!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->cleanupNative()V

    .line 151
    iput-boolean v3, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    .line 155
    .local v6, "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 156
    .local v1, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 159
    .end local v1    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    .end local v6    # "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_3
    return v5
.end method

.method connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 351
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pan Device not disconnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v1, 0x0

    .line 358
    :goto_0
    return v1

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 362
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    const/4 v1, 0x1

    return v1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 683
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMaxPanDevices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPanIfName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTetherOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 687
    const-string v3, "mPanDevices:"

    invoke-static {p1, v3}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 688
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 689
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const-string v3, "mBluetoothIfaceAddresses:"

    invoke-static {p1, v3}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 692
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 693
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 4
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
    .line 410
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 413
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 370
    .local v0, "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    if-nez v0, :cond_0

    .line 371
    const-string v1, "[BT][PAN][PanService]"

    const-string v2, "[getConnectionState] device is not in list, and return BluetoothPan.STATE_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v1, 0x0

    .line 374
    :goto_0
    return v1

    :cond_0
    # getter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$700(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v1

    goto :goto_0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 10
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
    .line 417
    const-string v8, "android.permission.BLUETOOTH"

    const-string v9, "Need BLUETOOTH permission"

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v6, "panDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 421
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 422
    .local v5, "panDeviceState":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v7, v0, v3

    .line 423
    .local v7, "state":I
    if-ne v7, v5, :cond_1

    .line 424
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    .end local v0    # "arr$":[I
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "panDeviceState":I
    .end local v7    # "state":I
    :cond_2
    return-object v6
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "[BT][PAN][PanService]"

    return-object v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "local_role"    # I
    .param p5, "remote_role"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    .line 491
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handlePanDeviceStateChange] device : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", iface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", local_role:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", remote_role :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v3, 0x0

    .line 497
    .local v3, "ifaceAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 498
    .local v0, "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    if-nez v0, :cond_1

    .line 499
    const/4 v7, 0x0

    .line 504
    .local v7, "prevState":I
    :goto_0
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handlePanDeviceStateChange] preState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-nez v7, :cond_2

    if-ne p3, v8, :cond_2

    .line 512
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring state change from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    :goto_1
    return-void

    .line 501
    .end local v7    # "prevState":I
    :cond_1
    # getter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$700(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v7

    .line 502
    .restart local v7    # "prevState":I
    # getter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$800(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 516
    :cond_2
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handlePanDeviceStateChange] preState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-eq v7, p3, :cond_0

    .line 518
    if-ne p5, v5, :cond_7

    .line 519
    if-ne p3, v5, :cond_6

    .line 520
    iget-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eqz v1, :cond_3

    if-ne p4, v5, :cond_4

    .line 521
    :cond_3
    const-string v1, "[BT][PAN][PanService]"

    const-string v2, "[handlePanDeviceStateChange] BT tethering is off/Local role is PANU drop the connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    goto :goto_1

    .line 526
    :cond_4
    const-string v1, "[BT][PAN][PanService]"

    const-string v2, "[handlePanDeviceStateChange] LOCAL_NAP_ROLE:REMOTE_PANU_ROLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pan/PanService;->enableTethering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    if-nez v3, :cond_5

    const-string v1, "[BT][PAN][PanService]"

    const-string v2, "[handlePanDeviceStateChange] Error seting up tether interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_5
    :goto_2
    if-nez v0, :cond_a

    .line 552
    const-string v1, "[BT][PAN][PanService]"

    const-string v2, "[handlePanDeviceStateChange] panDevice not exist, new one and put into list!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .end local v0    # "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    move-object v1, p0

    move v2, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;-><init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;Ljava/lang/String;I)V

    .line 554
    .restart local v0    # "panDevice":Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :goto_3
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handlePanDeviceStateChange] Pan Device state : device : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", State :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, p3, v7}, Lcom/android/bluetooth/pan/PanService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 568
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 570
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {v6, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v6, v1}, Lcom/android/bluetooth/pan/PanService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 530
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_6
    if-nez p3, :cond_5

    .line 531
    if-eqz v3, :cond_5

    .line 532
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    const/4 v3, 0x0

    goto :goto_2

    .line 536
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    if-eqz v1, :cond_5

    .line 538
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handlePanDeviceStateChange] LOCAL_PANU_ROLE:REMOTE_NAP_ROLE state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", prevState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-ne p3, v5, :cond_8

    .line 541
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startReverseTether(Ljava/lang/String;)V

    .line 542
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mLocalPanuConnected:Z

    goto/16 :goto_2

    .line 543
    :cond_8
    if-nez p3, :cond_5

    if-eq v7, v5, :cond_9

    if-ne v7, v8, :cond_5

    .line 546
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->stopReverseTether()V

    .line 547
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mLocalPanuConnected:Z

    goto/16 :goto_2

    .line 556
    :cond_a
    # setter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I
    invoke-static {v0, p3}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$702(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    .line 557
    # setter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$802(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    # setter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v0, p4}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$902(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    .line 559
    # setter for: Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$1002(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    return-object v0
.end method

.method isPanNapOn()Z
    .locals 2

    .prologue
    .line 378
    const-string v0, "[BT][PAN][PanService]"

    const-string v1, "[isPanNapOn] isTetheringOn call getPanLocalRoleNative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPanUOn()Z
    .locals 2

    .prologue
    .line 382
    const-string v0, "[BT][PAN][PanService]"

    const-string v1, "[isPanUOn] isTetheringOn call getPanLocalRoleNative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTetheringOn()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return v0
.end method

.method setBluetoothTethering(Z)V
    .locals 7
    .param p1, "value"    # Z

    .prologue
    .line 391
    const-string v4, "[BT][PAN][PanService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setBluetoothTethering] value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", origin value(mTetherOn) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 395
    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 397
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_config_tethering"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 400
    :cond_0
    iget-boolean v4, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eq v4, p1, :cond_1

    .line 402
    iput-boolean p1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 405
    .local v1, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 407
    .end local v0    # "DevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 114
    const-string v1, "[BT][PAN][PanService]"

    const-string v2, "[start] enter!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    const-string v1, "[BT][PAN][PanService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[start] mMaxPanDevices : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->initializeNative()V

    .line 125
    iput-boolean v4, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    .line 127
    new-instance v1, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/pan/PanService;)V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 137
    return v4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 2

    .prologue
    .line 141
    const-string v0, "[BT][PAN][PanService]"

    const-string v1, "[stop] enter!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method
