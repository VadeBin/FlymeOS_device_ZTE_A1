.class public abstract Lcom/android/bluetooth/map/BluetoothMapbMessage;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessage$1;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    }
.end annotation


# static fields
.field protected static final D:Z = true

.field public static INVALID_VALUE:I = 0x0

.field protected static TAG:Ljava/lang/String; = null

.field protected static final V:Z = true

.field private static final VERSION:Ljava/lang/String; = "VERSION:1.0"


# instance fields
.field protected mAppParamCharset:I

.field private mBMsgLength:I

.field protected mCharset:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mOriginator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private mPartId:J

.field private mRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;

.field protected mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "[MAP]BluetoothMapbMessage"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    .line 51
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 54
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 57
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J

    .line 58
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    .line 62
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    .line 64
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 65
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 409
    return-void
.end method

.method public static parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .locals 24
    .param p0, "bMsgStream"    # Ljava/io/InputStream;
    .param p1, "appParamCharset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 413
    const-string v10, ""

    .line 414
    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 415
    .local v11, "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    const/16 v16, 0x0

    .line 416
    .local v16, "status":Z
    const/16 v17, 0x0

    .line 417
    .local v17, "statusFound":Z
    const/16 v18, 0x0

    .line 418
    .local v18, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const/4 v8, 0x0

    .line 426
    .local v8, "folder":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    .line 427
    .local v15, "sdCard":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/bluetooth/log/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 429
    new-instance v7, Ljava/io/File;

    const-string v21, "receivedBMessage.txt"

    move-object/from16 v0, v21

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 430
    .local v7, "file":Ljava/io/File;
    const/4 v12, 0x0

    .line 431
    .local v12, "outStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 432
    .local v6, "failed":Z
    const/16 v20, 0x0

    .line 435
    .local v20, "writtenLen":I
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v13, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .local v13, "outStream":Ljava/io/FileOutputStream;
    const/16 v21, 0x1000

    :try_start_1
    move/from16 v0, v21

    new-array v3, v0, [B

    .line 438
    .local v3, "buffer":[B
    const/4 v9, 0x0

    .line 439
    .local v9, "len":I
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_0

    .line 440
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v3, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    add-int v20, v20, v9

    goto :goto_0

    .line 450
    :cond_0
    if-eqz v13, :cond_14

    .line 452
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v13

    .line 458
    .end local v3    # "buffer":[B
    .end local v9    # "len":I
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    if-eqz v6, :cond_4

    .line 459
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 453
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v9    # "len":I
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v21

    move-object v12, v13

    .line 454
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 443
    .end local v3    # "buffer":[B
    .end local v9    # "len":I
    :catch_1
    move-exception v5

    .line 444
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "[parse] Unable to create output stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    if-eqz v12, :cond_1

    .line 452
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 453
    :catch_2
    move-exception v21

    goto :goto_1

    .line 445
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 446
    .local v5, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "[parse] Failed to copy the received message"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 447
    if-eqz v20, :cond_2

    .line 448
    const/4 v6, 0x1

    .line 450
    :cond_2
    if-eqz v12, :cond_1

    .line 452
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 453
    :catch_4
    move-exception v21

    goto :goto_1

    .line 450
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    :goto_4
    if-eqz v12, :cond_3

    .line 452
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 454
    :cond_3
    :goto_5
    throw v21

    .line 462
    :cond_4
    if-nez v12, :cond_6

    .line 479
    :goto_6
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[parse] The incoming bMessage have been dumped to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v14, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;-><init>(Ljava/io/InputStream;)V

    .line 483
    .local v14, "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    const-string v21, "BEGIN:BMSG"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    .line 484
    const-string v21, "VERSION"

    const-string v22, "1.0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    .line 488
    :goto_7
    const-string v21, "BEGIN:VCARD"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "BEGIN:BENV"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 489
    const-string v21, "STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 490
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "arg":[Ljava/lang/String;
    if-eqz v2, :cond_9

    array-length v0, v2

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 492
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, "READ"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 493
    const/16 v16, 0x1

    .line 503
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_5
    :goto_8
    const-string v21, "TYPE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 504
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 505
    .restart local v2    # "arg":[Ljava/lang/String;
    if-eqz v2, :cond_d

    array-length v0, v2

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 506
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 507
    .local v19, "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v18

    .line 508
    if-nez p1, :cond_a

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 510
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Native appParamsCharset only supported for SMS"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 467
    .end local v2    # "arg":[Ljava/lang/String;
    .end local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .end local v19    # "value":Ljava/lang/String;
    :cond_6
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 473
    :goto_9
    :try_start_9
    new-instance p0, Ljava/io/FileInputStream;

    .end local p0    # "bMsgStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    .restart local p0    # "bMsgStream":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 474
    .end local p0    # "bMsgStream":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    .line 475
    .local v5, "e":Ljava/io/FileNotFoundException;
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "[parse] Failed to open the bMessage file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 494
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "arg":[Ljava/lang/String;
    .restart local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .restart local p0    # "bMsgStream":Ljava/io/InputStream;
    :cond_7
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UNREAD"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 495
    const/16 v16, 0x0

    goto :goto_8

    .line 497
    :cond_8
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Wrong value in \'STATUS\': "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v2, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 500
    :cond_9
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Missing value for \'STATUS\': "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 512
    .restart local v19    # "value":Ljava/lang/String;
    :cond_a
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 530
    .end local v2    # "arg":[Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_b
    :goto_a
    const-string v21, "FOLDER"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 531
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 532
    .restart local v2    # "arg":[Ljava/lang/String;
    if-eqz v2, :cond_c

    array-length v0, v2

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 533
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 537
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_c
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 515
    .restart local v2    # "arg":[Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :pswitch_0
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    .end local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-direct {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 516
    .restart local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_a

    .line 518
    :pswitch_1
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;

    .end local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-direct {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;-><init>()V

    .line 519
    .restart local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_a

    .line 521
    :pswitch_2
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    .end local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-direct {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;-><init>()V

    .line 522
    .restart local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_a

    .line 527
    .end local v19    # "value":Ljava/lang/String;
    :cond_d
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Missing value for \'TYPE\':"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 539
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_e
    if-nez v11, :cond_f

    .line 540
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Missing bMessage TYPE: - unable to parse body-content"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 541
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 542
    move/from16 v0, p1

    iput v0, v11, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    .line 543
    if-eqz v8, :cond_10

    .line 544
    invoke-virtual {v11, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setCompleteFolder(Ljava/lang/String;)V

    .line 545
    :cond_10
    if-eqz v17, :cond_11

    .line 546
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    .line 549
    :cond_11
    :goto_b
    const-string v21, "BEGIN:VCARD"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 550
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "[parse] Decoding vCard"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V

    .line 552
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 554
    :cond_12
    const-string v21, "BEGIN:BENV"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 555
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v11, v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 566
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 571
    :goto_c
    return-object v11

    .line 557
    :cond_13
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bmessage has no BEGIN:BENV - line:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 453
    .end local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    :catch_6
    move-exception v22

    goto/16 :goto_5

    .line 468
    :catch_7
    move-exception v21

    goto/16 :goto_9

    .line 567
    .restart local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    :catch_8
    move-exception v21

    goto :goto_c

    .line 450
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .end local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v21

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 445
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v5

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 443
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v5

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v9    # "len":I
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :cond_14
    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V
    .locals 13
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 598
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "line":Ljava/lang/String;
    :goto_0
    const-string v8, "END:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 600
    const-string v8, "PARTID:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 601
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "arg":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v8, v0

    if-ne v8, v12, :cond_1

    .line 604
    const/4 v8, 0x1

    :try_start_0
    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 605
    .restart local v0    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 606
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong value in \'PARTID\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 609
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing value for \'PARTID\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 612
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_2
    const-string v8, "ENCODING:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 613
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 614
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v8, v0

    if-ne v8, v12, :cond_3

    .line 615
    aget-object v8, v0, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    goto :goto_1

    .line 618
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing value for \'ENCODING\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 621
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_4
    const-string v8, "CHARSET:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 622
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 623
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v8, v0

    if-ne v8, v12, :cond_5

    .line 624
    aget-object v8, v0, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    goto/16 :goto_1

    .line 627
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing value for \'CHARSET\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 630
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_6
    const-string v8, "LANGUAGE:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 631
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 632
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_7

    array-length v8, v0

    if-ne v8, v12, :cond_7

    .line 633
    aget-object v8, v0, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 638
    :cond_7
    const-string v8, ""

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 641
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_8
    const-string v8, "LENGTH:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 642
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 643
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v8, v0

    if-ne v8, v12, :cond_9

    .line 645
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 646
    :catch_1
    move-exception v3

    .line 647
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong value in \'LENGTH\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 650
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing value for \'LENGTH\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 653
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_a
    const-string v8, "BEGIN:MSG"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 654
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    sget v9, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    if-ne v8, v9, :cond_b

    .line 655
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Missing value for \'LENGTH\'. Unable to read remaining part of the message"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 665
    :cond_b
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p1, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getDataBytes(I)[B

    move-result-object v7

    .line 668
    .local v7, "rawData":[B
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v1, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 670
    .local v1, "data":Ljava/lang/String;
    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[parseBody] MsgLength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[parseBody] line.getBytes().length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v8, "\\n"

    const-string v9, "<LF>\n"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "debug":Ljava/lang/String;
    const-string v8, "\\r"

    const-string v9, "<CR>"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 674
    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[parseBody] The line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v8, "\\n"

    const-string v9, "<LF>\n"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    const-string v8, "\\r"

    const-string v9, "<CR>"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 677
    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[parseBody] The msgString: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 689
    const-string v8, "\r\nEND:MSG\r\n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 690
    .local v6, "messages":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgInit()V

    .line 691
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_0

    .line 692
    aget-object v8, v6, v4

    const-string v9, "^BEGIN:MSG\r\n"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 693
    aget-object v8, v6, v4

    const-string v9, "\r\n([/]*)/END\\:MSG"

    const-string v10, "\r\n$1END:MSG"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 694
    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 695
    aget-object v8, v6, v4

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgPart(Ljava/lang/String;)V

    .line 691
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 679
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "debug":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "messages":[Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 680
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[parseBody]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unable to convert to UTF-8"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 700
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "rawData":[B
    :cond_c
    return-void
.end method

.method private parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V
    .locals 4
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .param p2, "level"    # I

    .prologue
    .line 576
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "line":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parseEnvelope] Decoding envelope level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parseEnvelope] Decoding recipient vCard level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 582
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :cond_1
    const-string v1, "BEGIN:BENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v2, "[parseEnvelope] Decoding nested envelope"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 590
    :cond_2
    const-string v1, "BEGIN:BBODY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v2, "[parseEnvelope] Decoding bbody"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V

    .line 594
    :cond_3
    return-void
.end method


# virtual methods
.method public addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "originator"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method public addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    return-void
.end method

.method public addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    return-void
.end method

.method protected decodeBinary(Ljava/lang/String;)[B
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 839
    .local v4, "out":[B
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[decodeBinary] Decoding binary data: START:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    array-length v3, v4

    .local v3, "n":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 842
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 843
    .local v6, "value":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    .line 840
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 846
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 847
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    array-length v3, v4

    :goto_1
    if-ge v0, v3, :cond_1

    .line 849
    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-byte v10, v4, v0

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 851
    :cond_1
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[decodeBinary] Decoded binary data: START:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-object v4
.end method

.method public abstract encode()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected encodeBinary([B[B)Ljava/lang/String;
    .locals 5
    .param p1, "pduData"    # [B
    .param p2, "scAddressData"    # [B

    .prologue
    const/16 v4, 0x10

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 818
    .local v1, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 819
    aget-byte v2, p2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    aget-byte v2, p2, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 823
    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodeGeneric(Ljava/util/ArrayList;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 858
    .local p1, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 860
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "BEGIN:BMSG"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v9, "VERSION:1.0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string v9, "STATUS:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    const-string v9, "TYPE:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x200

    if-le v9, v10, :cond_0

    .line 865
    const-string v9, "FOLDER:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit16 v11, v11, -0x200

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :goto_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 869
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 870
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 867
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v9, "FOLDER:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 876
    :cond_1
    const-string v9, "BEGIN:BENV"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 878
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 879
    .restart local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encodeGeneric: recipient email"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstEmail()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 883
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v9, "BEGIN:BBODY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    const-string v10, ""

    if-eq v9, v10, :cond_3

    .line 885
    const-string v9, "ENCODING:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_3
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    const-string v10, ""

    if-eq v9, v10, :cond_4

    .line 887
    const-string v9, "CHARSET:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :cond_4
    const/4 v4, 0x0

    .line 892
    .local v4, "length":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 893
    .local v2, "fragment":[B
    array-length v9, v2

    add-int/lit8 v9, v9, 0x16

    add-int/2addr v4, v9

    .line 894
    goto :goto_3

    .line 895
    .end local v2    # "fragment":[B
    :cond_5
    const-string v9, "LENGTH:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 900
    .local v6, "msgStart":[B
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x1f

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 901
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    const-string v9, "END:BBODY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v9, "END:BENV"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const-string v9, "END:BMSG"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 909
    .local v5, "msgEnd":[B
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    array-length v9, v6

    array-length v10, v5

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 910
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 912
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 913
    .restart local v2    # "fragment":[B
    const-string v9, "BEGIN:MSG\r\n"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 914
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 915
    const-string v9, "\r\nEND:MSG\r\n"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 921
    .end local v2    # "fragment":[B
    .end local v8    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[encodeGeneric]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v9, 0x0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    return-object v9

    .line 917
    .restart local v8    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :try_start_1
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 919
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[encodeGeneric]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-virtual {v8, v11}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_5
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSingleRecipient()Ljava/lang/String;
    .locals 6

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v3

    .line 930
    .local v3, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 931
    :cond_0
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v5, "[getSingleRecipient] recipientList == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v1, ""

    .line 943
    :goto_0
    return-object v1

    .line 935
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 937
    .local v2, "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEnvLevel()I

    move-result v4

    if-nez v4, :cond_2

    .line 939
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "phone":Ljava/lang/String;
    goto :goto_0

    .line 943
    .end local v1    # "phone":Ljava/lang/String;
    .end local v2    # "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public abstract parseMsgInit()V
.end method

.method public abstract parseMsgPart(Ljava/lang/String;)V
.end method

.method public setCompleteFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 735
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public setRecipient(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "recipient"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    return-void
.end method

.method public setStatus(Z)V
    .locals 1
    .param p1, "read"    # Z

    .prologue
    .line 716
    if-eqz p1, :cond_0

    .line 717
    const-string v0, "READ"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    const-string v0, "UNREAD"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 724
    return-void
.end method
