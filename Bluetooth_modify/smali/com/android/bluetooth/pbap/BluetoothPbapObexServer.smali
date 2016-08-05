.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;,
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$ContentType;
    }
.end annotation


# static fields
.field private static CALLLOG_NUM_LIMIT:I = 0x0

.field private static final CCH:Ljava/lang/String; = "cch"

.field private static final CCH_PATH:Ljava/lang/String; = "/telecom/cch"

.field private static final D:Z = true

.field private static final ICH:Ljava/lang/String; = "ich"

.field private static final ICH_PATH:Ljava/lang/String; = "/telecom/ich"

.field private static final IOT_DEVICE:[Ljava/lang/String;

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field private static final LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

.field private static final MCH:Ljava/lang/String; = "mch"

.field private static final MCH_PATH:Ljava/lang/String; = "/telecom/mch"

.field private static final NEED_SEND_BODY:I = -0x1

.field private static final OCH:Ljava/lang/String; = "och"

.field private static final OCH_PATH:Ljava/lang/String; = "/telecom/och"

.field public static ORDER_BY_ALPHABETICAL:I = 0x0

.field public static ORDER_BY_INDEXED:I = 0x0

.field private static final PB:Ljava/lang/String; = "pb"

.field private static final PBAP_TARGET:[B

.field private static final PB_PATH:Ljava/lang/String; = "/telecom/pb"

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM1_PATH:Ljava/lang/String; = "/SIM1/telecom/pb"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexServer"

.field private static final TYPE_LISTING:Ljava/lang/String; = "x-bt/vcard-listing"

.field private static final TYPE_PB:Ljava/lang/String; = "x-bt/phonebook"

.field private static final TYPE_VCARD:Ljava/lang/String; = "x-bt/vcard"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z = true

.field private static final VCARD_NAME_SUFFIX_LENGTH:I = 0x5

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mMissedCallSize:I

.field private mNeedNewMissedCallsNum:Z

.field private mNeedPhonebookSize:Z

.field private mOrderBy:I

.field private mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    .line 83
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const-string v1, "/telecom/ich"

    aput-object v1, v0, v5

    const-string v1, "/telecom/och"

    aput-object v1, v0, v6

    const-string v1, "/telecom/mch"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/SIM1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/SIM1/telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/SIM1/telecom/pb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    .line 89
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const-string v1, "/telecom/ich"

    aput-object v1, v0, v5

    const-string v1, "/telecom/och"

    aput-object v1, v0, v6

    const-string v1, "/telecom/mch"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/SIM1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/SIM1/telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/SIM1/telecom/ich"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/SIM1/telecom/och"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/SIM1/telecom/mch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/SIM1/telecom/cch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/SIM1/telecom/pb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

    .line 145
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "My Volvo Car"

    aput-object v1, v0, v3

    const-string v1, "SGM"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->IOT_DEVICE:[Ljava/lang/String;

    .line 160
    const/16 v0, 0x32

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 162
    sput v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    .line 164
    sput v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    .line 166
    sput-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    return-void

    .line 77
    nop

    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 147
    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 158
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 184
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 185
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    .line 186
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 187
    return-void
.end method

.method private checkIOTSolutionOnOff()Z
    .locals 6

    .prologue
    .line 471
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "deviceName":Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->IOT_DEVICE:[Ljava/lang/String;

    array-length v2, v3

    .line 474
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 475
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->IOT_DEVICE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRemoteDevice name is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") IOTSolutionOn is ON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v3, 0x1

    .line 480
    :goto_1
    return v3

    .line 474
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 1049
    const/4 v1, 0x1

    .line 1051
    .local v1, "returnvalue":Z
    if-eqz p0, :cond_0

    .line 1052
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1060
    :try_start_1
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1066
    :cond_1
    :goto_1
    return v1

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v1, 0x0

    goto :goto_0

    .line 1062
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1063
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createList(IIILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 13
    .param p1, "pathType"    # I
    .param p2, "maxListCount"    # I
    .param p3, "listStartOffset"    # I
    .param p4, "searchValue"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/StringBuilder;
    .param p6, "type"    # Ljava/lang/String;

    .prologue
    .line 683
    const/4 v4, 0x0

    .line 684
    .local v4, "itemsFound":I
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v10, p1, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookNameList(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 685
    .local v6, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, p2, :cond_2

    move v9, p2

    .line 686
    .local v9, "requestSize":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 687
    .local v5, "listSize":I
    const-string v1, ""

    .line 689
    .local v1, "compareValue":Ljava/lang/String;
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "search by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", requestSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " searchValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v10, "number"

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 694
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p4

    invoke-virtual {v10, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactNamesByNumber(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 695
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 696
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 697
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move/from16 v8, p3

    .local v8, "pos":I
    :goto_2
    if-ge v8, v5, :cond_3

    if-ge v4, v9, :cond_3

    .line 700
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 701
    .local v2, "currentValue":Ljava/lang/String;
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 703
    add-int/lit8 v4, v4, 0x1

    .line 704
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 705
    const/4 v10, 0x0

    const/16 v11, 0x2c

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 706
    :cond_0
    move-object/from16 v0, p5

    invoke-direct {p0, v8, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 699
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 685
    .end local v1    # "compareValue":Ljava/lang/String;
    .end local v2    # "currentValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "listSize":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    .end local v9    # "requestSize":I
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto/16 :goto_0

    .line 709
    .restart local v1    # "compareValue":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "listSize":I
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pos":I
    .restart local v9    # "requestSize":I
    :cond_3
    if-lt v4, v9, :cond_5

    .line 730
    .end local v3    # "i":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    :cond_4
    return v4

    .line 695
    .restart local v3    # "i":I
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pos":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 714
    .end local v3    # "i":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    :cond_6
    if-eqz p4, :cond_7

    .line 715
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 717
    :cond_7
    move/from16 v8, p3

    .restart local v8    # "pos":I
    :goto_3
    if-ge v8, v5, :cond_4

    if-ge v4, v9, :cond_4

    .line 719
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 720
    .restart local v2    # "currentValue":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 721
    const/4 v10, 0x0

    const/16 v11, 0x2c

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 723
    :cond_8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 725
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 726
    move-object/from16 v0, p5

    invoke-direct {p0, v8, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 718
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static final createSelectionPara(I)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 1075
    const/4 v0, 0x0

    .line 1076
    .local v0, "selection":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1089
    :goto_0
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call log selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-object v0

    .line 1078
    :pswitch_0
    const-string v0, "type=1"

    .line 1079
    goto :goto_0

    .line 1081
    :pswitch_1
    const-string v0, "type=2"

    .line 1082
    goto :goto_0

    .line 1084
    :pswitch_2
    const-string v0, "type=3"

    .line 1085
    goto :goto_0

    .line 1076
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 8
    .param p1, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p2, "size"    # I
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 786
    const/4 v5, 0x1

    new-array v2, v5, [B

    .line 787
    .local v2, "misnum":[B
    new-instance v0, Ljavax/obex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 791
    .local v0, "ap":Ljavax/obex/ApplicationParameter;
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    if-eqz v5, :cond_2

    .line 792
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "Need Phonebook size in response header."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 795
    const/4 v5, 0x2

    new-array v4, v5, [B

    .line 797
    .local v4, "pbsize":[B
    const/4 v5, 0x0

    div-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 798
    const/4 v5, 0x1

    rem-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 799
    const/16 v5, 0x8

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6, v4}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 802
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v5, :cond_0

    .line 803
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 804
    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v5

    .line 805
    .local v3, "nmnum":I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 807
    if-lez v3, :cond_1

    .line 808
    :goto_0
    const/4 v5, 0x0

    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 809
    const/16 v5, 0x9

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 811
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v3    # "nmnum":I
    :cond_0
    const/16 v5, 0x4c

    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 816
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send back Phonebook size only, without body info! Size= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0, p4, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I

    move-result v5

    .line 848
    .end local v4    # "pbsize":[B
    :goto_1
    return v5

    .line 807
    .restart local v3    # "nmnum":I
    .restart local v4    # "pbsize":[B
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 824
    .end local v3    # "nmnum":I
    .end local v4    # "pbsize":[B
    :cond_2
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v5, :cond_3

    .line 825
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "Need new missed call num in response header."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 828
    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v5

    .line 829
    .restart local v3    # "nmnum":I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 831
    if-lez v3, :cond_4

    .line 832
    :goto_2
    const/4 v5, 0x0

    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 833
    const/16 v5, 0x9

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 835
    const/16 v5, 0x4c

    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 836
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :try_start_0
    invoke-interface {p4, p3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .end local v3    # "nmnum":I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .line 831
    .restart local v3    # "nmnum":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 843
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/16 v5, 0xd0

    goto :goto_1
.end method

.method private final isLegalPath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v1

    .line 488
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 489
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 453
    move-object v1, p1

    .line 454
    .local v1, "contentTypeName":Ljava/lang/String;
    const-string v7, ".vcf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 455
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, ".vcf"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_0
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "nameList":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 463
    .local v5, "subName":Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 464
    const/4 v6, 0x1

    .line 467
    .end local v5    # "subName":Ljava/lang/String;
    :cond_1
    return v6

    .line 462
    .restart local v5    # "subName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 1142
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :try_start_0
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_ISO_8601 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_4_BYTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DESCRIPTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBJECT_CLASS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :goto_0
    return-void

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1137
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1139
    return-void
.end method

.method private final parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z
    .locals 11
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "i":I
    const/4 v5, 0x1

    .line 552
    .local v5, "parseOk":Z
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_6

    if-ne v5, v10, :cond_6

    .line 553
    aget-byte v6, p1, v1

    packed-switch v6, :pswitch_data_0

    .line 617
    const/4 v5, 0x0

    .line 618
    const-string v6, "BluetoothPbapObexServer"

    const-string v7, "Parse Application Parameter error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :pswitch_0
    add-int/lit8 v1, v1, 0x2

    .line 556
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    .line 558
    add-int v6, v1, v2

    aget-byte v6, p1, v6

    if-eqz v6, :cond_0

    .line 559
    iput-boolean v9, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    .line 560
    iget-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    add-int v7, v1, v2

    aget-byte v7, p1, v7

    aput-byte v7, v6, v2

    .line 557
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    :cond_1
    add-int/lit8 v1, v1, 0x8

    .line 564
    goto :goto_0

    .line 566
    .end local v2    # "index":I
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 567
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 568
    add-int/lit8 v1, v1, 0x1

    .line 569
    goto :goto_0

    .line 571
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 573
    aget-byte v3, p1, v1

    .line 574
    .local v3, "length":I
    if-nez v3, :cond_2

    .line 575
    const/4 v5, 0x0

    .line 576
    goto :goto_0

    .line 578
    :cond_2
    add-int v6, v1, v3

    aget-byte v6, p1, v6

    if-nez v6, :cond_3

    .line 579
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v3, -0x1

    invoke-direct {v6, p1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 583
    :goto_2
    add-int/2addr v1, v3

    .line 584
    add-int/lit8 v1, v1, 0x1

    .line 585
    goto :goto_0

    .line 581
    :cond_3
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, p1, v7, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    goto :goto_2

    .line 587
    .end local v3    # "length":I
    :pswitch_3
    add-int/lit8 v1, v1, 0x2

    .line 588
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 589
    add-int/lit8 v1, v1, 0x1

    .line 590
    goto :goto_0

    .line 592
    :pswitch_4
    add-int/lit8 v1, v1, 0x2

    .line 593
    aget-byte v6, p1, v1

    if-nez v6, :cond_4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    if-nez v6, :cond_4

    .line 594
    iput-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 600
    :goto_3
    add-int/lit8 v1, v1, 0x2

    .line 601
    goto/16 :goto_0

    .line 596
    :cond_4
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 597
    .local v0, "highValue":I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 598
    .local v4, "lowValue":I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_3

    .line 603
    .end local v0    # "highValue":I
    .end local v4    # "lowValue":I
    :pswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 604
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 605
    .restart local v0    # "highValue":I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 606
    .restart local v4    # "lowValue":I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 607
    add-int/lit8 v1, v1, 0x2

    .line 608
    goto/16 :goto_0

    .line 610
    .end local v0    # "highValue":I
    .end local v4    # "lowValue":I
    :pswitch_6
    add-int/lit8 v1, v1, 0x2

    .line 611
    aget-byte v6, p1, v1

    if-eqz v6, :cond_5

    .line 612
    iput-boolean v9, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 614
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 615
    goto/16 :goto_0

    .line 623
    :cond_6
    invoke-virtual {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->dump()V

    .line 625
    return v5

    .line 553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 29
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 971
    if-eqz p5, :cond_1

    .line 972
    const-string v5, "."

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    .line 973
    .local v24, "dotIndex":I
    const-string v28, "vcf"

    .line 974
    .local v28, "vcf":Ljava/lang/String;
    if-ltz v24, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v24

    if-gt v0, v5, :cond_1

    .line 975
    add-int/lit8 v5, v24, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 976
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "name is not .vcf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/16 v25, 0xc6

    .line 1042
    .end local v24    # "dotIndex":I
    .end local v28    # "vcf":Ljava/lang/String;
    :cond_0
    :goto_0
    return v25

    .line 982
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v26

    .line 983
    .local v26, "pbSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v26

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v25

    .line 984
    .local v25, "needSendBody":I
    const/4 v5, -0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_0

    .line 988
    if-nez v26, :cond_2

    .line 989
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "PhonebookSize is 0, return."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/16 v25, 0xa0

    goto :goto_0

    .line 993
    :cond_2
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v0, v26

    if-lt v0, v5, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v27, v0

    .line 995
    .local v27, "requestSize":I
    :goto_1
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 996
    .local v15, "startPoint":I
    if-ltz v15, :cond_3

    move/from16 v0, v26

    if-lt v15, v0, :cond_5

    .line 997
    :cond_3
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listStartOffset is not correct! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/16 v25, 0xa0

    goto :goto_0

    .end local v15    # "startPoint":I
    .end local v27    # "requestSize":I
    :cond_4
    move/from16 v27, v26

    .line 993
    goto :goto_1

    .line 1002
    .restart local v15    # "startPoint":I
    .restart local v27    # "requestSize":I
    :cond_5
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_7

    .line 1004
    :cond_6
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    move/from16 v0, v27

    if-le v0, v5, :cond_7

    .line 1009
    :cond_7
    add-int v5, v15, v27

    add-int/lit8 v9, v5, -0x1

    .line 1010
    .local v9, "endPoint":I
    add-int/lit8 v5, v26, -0x1

    if-le v9, v5, :cond_8

    .line 1011
    add-int/lit8 v9, v26, -0x1

    .line 1013
    :cond_8
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pullPhonebook(): requestSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " endPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 1017
    .local v10, "vcard21":Z
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_e

    .line 1020
    :cond_9
    if-nez v15, :cond_b

    .line 1021
    if-nez v9, :cond_a

    .line 1022
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "only have an owner phonename item, ignore it!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/16 v25, 0xa0

    goto/16 :goto_0

    .line 1025
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 1028
    :cond_b
    if-nez v15, :cond_d

    .line 1029
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    invoke-virtual {v5, v10, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v11

    .line 1030
    .local v11, "ownerVcard":Ljava/lang/String;
    if-nez v9, :cond_c

    .line 1031
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 1033
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIIZLjava/lang/String;Z[B)I

    move-result v25

    goto/16 :goto_0

    .line 1037
    .end local v11    # "ownerVcard":Ljava/lang/String;
    :cond_d
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go here --> real startPoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", endPoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/16 v18, 0x0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v20, v0

    move-object/from16 v13, p4

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-virtual/range {v12 .. v20}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIIZLjava/lang/String;Z[B)I

    move-result v25

    goto/16 :goto_0

    .line 1042
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move/from16 v17, v0

    add-int/lit8 v19, v15, 0x1

    add-int/lit8 v20, v9, 0x1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v23, v0

    move-object/from16 v18, p4

    move/from16 v21, v10

    invoke-virtual/range {v16 .. v23}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZZ[B)I

    move-result v25

    goto/16 :goto_0
.end method

.method private final pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I
    .locals 20
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "op"    # Ljavax/obex/Operation;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "current_path"    # Ljava/lang/String;

    .prologue
    .line 914
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 915
    :cond_0
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Name is Null, or the length of name < 5 !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v3, 0xc6

    .line 965
    :goto_0
    return v3

    .line 918
    :cond_1
    const/4 v3, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 919
    .local v19, "strIndex":Ljava/lang/String;
    const/4 v6, 0x0

    .line 920
    .local v6, "intIndex":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 922
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 929
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v18

    .line 930
    .local v18, "size":I
    if-nez v18, :cond_3

    .line 931
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "PhonebookSize is 0, return."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/16 v3, 0xc4

    goto :goto_0

    .line 923
    .end local v18    # "size":I
    :catch_0
    move-exception v16

    .line 924
    .local v16, "e":Ljava/lang/NumberFormatException;
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch number format exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v3, 0xc6

    goto :goto_0

    .line 935
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "size":I
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 936
    .local v7, "vcard21":Z
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-nez v3, :cond_4

    .line 937
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "wrong path!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/16 v3, 0xc6

    goto :goto_0

    .line 939
    :cond_4
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_9

    .line 941
    :cond_5
    if-ltz v6, :cond_6

    move/from16 v0, v18

    if-lt v6, v0, :cond_7

    .line 942
    :cond_6
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested vcard is not acceptable! name= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v3, 0xc4

    goto/16 :goto_0

    .line 944
    :cond_7
    if-nez v6, :cond_8

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    invoke-virtual {v3, v7, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v17

    .line 947
    .local v17, "ownerVcard":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 949
    .end local v17    # "ownerVcard":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IIZLjava/lang/String;IZ[B)I

    move-result v3

    goto/16 :goto_0

    .line 953
    :cond_9
    if-lez v6, :cond_a

    move/from16 v0, v18

    if-le v6, v0, :cond_b

    .line 954
    :cond_a
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested vcard is not acceptable! name= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/16 v3, 0xc4

    goto/16 :goto_0

    .line 959
    :cond_b
    const/4 v3, 0x1

    if-lt v6, v3, :cond_c

    .line 960
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v10, p3

    move v11, v6

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v15}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZZ[B)I

    move-result v3

    goto/16 :goto_0

    .line 965
    :cond_c
    const/16 v3, 0xa0

    goto/16 :goto_0
.end method

.method private final pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 15
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 853
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 855
    .local v12, "searchAttr":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 857
    :cond_0
    const-string v3, "0"

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 858
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "searchAttr is not set by PCE, assume search by name by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v14

    .line 872
    .local v14, "size":I
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, v0, v14, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v10

    .line 873
    .local v10, "needSendBody":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_4

    .line 909
    .end local v10    # "needSendBody":I
    .end local v14    # "size":I
    :goto_1
    return v10

    .line 859
    :cond_1
    const-string v3, "0"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 860
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "search attr not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v3, "2"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 863
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "do not support search by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/16 v10, 0xd1

    goto :goto_1

    .line 866
    :cond_2
    const/16 v10, 0xcc

    goto :goto_1

    .line 868
    :cond_3
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchAttr is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .restart local v10    # "needSendBody":I
    .restart local v14    # "size":I
    :cond_4
    if-nez v14, :cond_5

    .line 878
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "PhonebookSize is 0, return."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/16 v10, 0xa0

    goto :goto_1

    .line 882
    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 883
    .local v11, "orderPara":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 885
    const-string v11, "0"

    .line 886
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Order parameter is not set by PCE. Assume order by \'Indexed\' by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_2
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 901
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 906
    :cond_6
    :goto_3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, "sendResult":I
    move v10, v13

    .line 909
    goto/16 :goto_1

    .line 888
    .end local v13    # "sendResult":I
    :cond_7
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 889
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Order parameter is not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string v3, "2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 892
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Do not support order by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/16 v10, 0xd1

    goto/16 :goto_1

    .line 895
    :cond_8
    const/16 v10, 0xcc

    goto/16 :goto_1

    .line 897
    :cond_9
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Order parameter is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 902
    :cond_a
    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 903
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    goto/16 :goto_3
.end method

.method private final pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "vcardString"    # Ljava/lang/String;

    .prologue
    .line 761
    if-nez p2, :cond_1

    .line 762
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "vcardString is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v2, 0xa0

    .line 781
    :cond_0
    :goto_0
    return v2

    .line 766
    :cond_1
    const/4 v1, 0x0

    .line 767
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/16 v2, 0xa0

    .line 769
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 770
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 771
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Send Data complete!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_1
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 778
    const/16 v2, 0xd0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open/write outputstrem failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/16 v2, 0xd0

    goto :goto_1
.end method

.method private final pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I
    .locals 5
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 738
    const/4 v1, 0x0

    .line 740
    .local v1, "outputStream":Ljava/io/OutputStream;
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Push Header"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/16 v2, 0xa0

    .line 745
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 746
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 753
    const/16 v2, 0xd0

    .line 756
    :cond_0
    :goto_0
    return v2

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    const/16 v2, 0xd0

    .line 752
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 753
    const/16 v2, 0xd0

    goto :goto_0

    .line 752
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 753
    const/16 v2, 0xd0

    :cond_1
    throw v3
.end method

.method private final sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "type"    # I
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "maxListCount"    # I
    .param p4, "listStartOffset"    # I
    .param p5, "searchValue"    # Ljava/lang/String;
    .param p6, "searchAttr"    # Ljava/lang/String;

    .prologue
    .line 632
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v8, "result":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 634
    .local v11, "itemsFound":I
    const-string v3, "<?xml version=\"1.0\"?>"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v3, "<!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\">"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v3, "<vCard-listing version=\"1.0\">"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const/4 v3, 0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 640
    :cond_0
    const-string v3, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 641
    const-string v9, "name"

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IIILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v11

    .line 674
    :cond_1
    :goto_0
    const-string v3, "</vCard-listing>"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemsFound ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v3

    :goto_1
    return v3

    .line 643
    :cond_2
    const-string v3, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 644
    const-string v9, "number"

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IIILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v11

    goto :goto_0

    .line 648
    :cond_3
    const/16 v3, 0xcc

    goto :goto_1

    .line 653
    :cond_4
    const-string v3, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 654
    const-string p6, "name"

    .line 660
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->loadCallHistoryList(ILjava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v13

    .line 662
    .local v13, "nameList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, p3

    if-lt v3, v0, :cond_8

    move/from16 v14, p3

    .line 663
    .local v14, "requestSize":I
    :goto_3
    move/from16 v15, p4

    .line 664
    .local v15, "startPoint":I
    add-int v10, v15, v14

    .line 665
    .local v10, "endPoint":I
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-le v10, v3, :cond_5

    .line 666
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 668
    :cond_5
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call log list, size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move v12, v15

    .local v12, "j":I
    :goto_4
    if-ge v12, v10, :cond_1

    .line 671
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 670
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 655
    .end local v10    # "endPoint":I
    .end local v12    # "j":I
    .end local v13    # "nameList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v14    # "requestSize":I
    .end local v15    # "startPoint":I
    :cond_6
    const-string v3, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 656
    const-string p6, "number"

    goto :goto_2

    .line 658
    :cond_7
    const/16 v3, 0xcc

    goto/16 :goto_1

    .line 662
    .restart local v13    # "nameList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    goto :goto_3
.end method

.method private writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "vcfIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1128
    const-string v0, "<card handle=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1130
    const-string v0, ".vcf\" name=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1132
    const-string v0, "\"/>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    return-void
.end method

.method private xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1097
    if-nez p1, :cond_1

    .line 1125
    :cond_0
    return-void

    .line 1101
    :cond_1
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v1, "iterator":Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    .line 1103
    .local v0, "character":C
    :goto_0
    const v2, 0xffff

    if-eq v0, v2, :cond_0

    .line 1104
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2

    .line 1105
    const-string v2, "&lt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :goto_1
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 1107
    :cond_2
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 1108
    const-string v2, "&gt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1110
    :cond_3
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    .line 1111
    const-string v2, "&quot;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1113
    :cond_4
    const/16 v2, 0x27

    if-ne v0, v2, :cond_5

    .line 1114
    const-string v2, "&#039;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1116
    :cond_5
    const/16 v2, 0x26

    if-ne v0, v2, :cond_6

    .line 1117
    const-string v2, "&amp;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1121
    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 255
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 257
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 258
    const/16 v0, 0xa0

    return v0
.end method

.method public final onAuthenticationFailure([B)V
    .locals 0
    .param p1, "userName"    # [B

    .prologue
    .line 1072
    return-void
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 324
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v8, 0xd0

    const/16 v11, 0x10

    const/16 v7, 0xc6

    .line 191
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 192
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 194
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 195
    .local v5, "uuid":[B
    if-nez v5, :cond_0

    move v6, v7

    .line 236
    .end local v5    # "uuid":[B
    :goto_0
    return v6

    .line 198
    .restart local v5    # "uuid":[B
    :cond_0
    const-string v6, "BluetoothPbapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    array-length v6, v5

    if-eq v6, v11, :cond_1

    .line 201
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 202
    goto :goto_0

    .line 204
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 205
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_2

    .line 206
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 207
    goto :goto_0

    .line 204
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_3
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 218
    .local v4, "remote":[B
    if-eqz v4, :cond_4

    .line 219
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect(): remote="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :cond_4
    const-string v6, "BluetoothPbapObexServer"

    const-string v7, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->checkIOTSolutionOnOff()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->setIOTSolution(Z)V

    .line 232
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 233
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x1389

    iput v6, v3, Landroid/os/Message;->what:I

    .line 234
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 236
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 211
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "remote":[B
    .end local v5    # "uuid":[B
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 213
    goto/16 :goto_0

    .line 222
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "uuid":[B
    :catch_1
    move-exception v1

    .line 223
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 224
    goto/16 :goto_0
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 270
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onDelete(): not support PUT request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 272
    const/16 v0, 0xc0

    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 241
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 243
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 244
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 245
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 248
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 17
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 332
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 333
    const/4 v14, 0x0

    .line 334
    .local v14, "request":Ljavax/obex/HeaderSet;
    new-instance v10, Ljavax/obex/HeaderSet;

    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    .line 335
    .local v10, "reply":Ljavax/obex/HeaderSet;
    const-string v15, ""

    .line 336
    .local v15, "type":Ljava/lang/String;
    const-string v6, ""

    .line 337
    .local v6, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 338
    .local v3, "appParam":[B
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    .line 340
    .local v4, "appParamValue":Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v14

    .line 341
    const/16 v2, 0x42

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 342
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 343
    const/16 v2, 0x4c

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    invoke-static {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 350
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnGet type is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; name is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-nez v15, :cond_0

    .line 353
    const/16 v2, 0xc6

    .line 448
    :goto_0
    return v2

    .line 344
    :catch_0
    move-exception v13

    .line 345
    .local v13, "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "request headers error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v2, 0xd0

    goto :goto_0

    .line 362
    .end local v13    # "e":Ljava/io/IOException;
    :cond_0
    const/16 v16, 0x1

    .line 363
    .local v16, "validName":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const/16 v16, 0x0

    .line 367
    :cond_1
    if-eqz v16, :cond_2

    if-eqz v16, :cond_9

    const-string v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 368
    :cond_2
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Guess what carkit actually want from current path ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 388
    :goto_1
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGet(): appParamValue.needTag="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_2
    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 432
    const/16 v2, 0xc0

    goto :goto_0

    .line 373
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 374
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 375
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 376
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 377
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 378
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 379
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto :goto_1

    .line 380
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 381
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 382
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 383
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 385
    :cond_8
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "mCurrentpath is not valid path!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/16 v2, 0xc6

    goto/16 :goto_0

    .line 401
    :cond_9
    const-string v2, "SIM1"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 402
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 403
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download Sim phonebook request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 404
    :cond_a
    const-string v2, "pb"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "SIM1"

    const/4 v7, 0x0

    const-string v8, "SIM1"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 406
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 407
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download sim phonebook request because currentpath"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 409
    :cond_b
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 410
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download phonebook request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 412
    :cond_c
    const-string v2, "ich"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 413
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 414
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download incoming calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 415
    :cond_d
    const-string v2, "och"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 416
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 417
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download outgoing calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 418
    :cond_e
    const-string v2, "mch"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 419
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 420
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 421
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download missed calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 422
    :cond_f
    const-string v2, "cch"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 423
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 424
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download combined calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 426
    :cond_10
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "Input name doesn\'t contain valid info!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v2, 0xc4

    goto/16 :goto_0

    .line 436
    :cond_11
    const-string v2, "x-bt/vcard-listing"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v10, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v2

    goto/16 :goto_0

    .line 440
    :cond_12
    const-string v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 441
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 444
    :cond_13
    const-string v2, "x-bt/phonebook"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v11, p1

    move-object v12, v6

    .line 445
    invoke-direct/range {v7 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 447
    :cond_14
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "unknown type request!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v2, 0xc6

    goto/16 :goto_0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 2
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 263
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onPut(): not support PUT request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 265
    const/16 v0, 0xc0

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 7
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    .line 278
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 279
    const-string v4, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before setPath, mCurrentPath ==  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 281
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 282
    .local v1, "current_path_tmp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 284
    .local v3, "tmp_path":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    const-string v4, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " create="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-eqz p3, :cond_1

    .line 292
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isLegalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 305
    if-eqz p4, :cond_3

    .line 306
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path create is forbidden!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/16 v4, 0xc3

    .line 316
    :goto_1
    return v4

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "Get name header fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v4, 0xd0

    goto :goto_1

    .line 297
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    if-nez v3, :cond_2

    .line 298
    const-string v1, ""

    goto :goto_0

    .line 300
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 309
    :cond_3
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path is not legal"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v4, 0xc4

    goto :goto_1

    .line 313
    :cond_4
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 314
    const-string v4, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after setPath, mCurrentPath ==  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v4, 0xa0

    goto :goto_1
.end method
