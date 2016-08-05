.class public Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BtOppObexServer"

.field private static final V:Z = true


# instance fields
.field private mAccepted:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentByte:I

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterrupted:Z

.field private mLocalShareInfoId:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServerBlocking:Z

.field private mSession:Ljavax/obex/ServerSession;

.field private mStopTaskId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;

.field private mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 85
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 93
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 95
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 110
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCurrentByte:I

    .line 114
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 116
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 117
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "[Bluetooth.OPP]BtOppObexServer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mStopTaskId:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 6

    .prologue
    .line 602
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processShareInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    .line 606
    .local v0, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    const-string v2, "Generate BluetoothOppReceiveFileInfo:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-object v0
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I
    .locals 30
    .param p1, "fileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .param p2, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 468
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "receiverFile ++, fileName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v21, -0x1

    .line 473
    .local v21, "status":I
    const/4 v5, 0x0

    .line 475
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 476
    .local v12, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 478
    .local v11, "error":Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 485
    :goto_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 488
    .local v6, "contentUri":Landroid/net/Uri;
    if-nez v11, :cond_0

    .line 489
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 490
    .local v24, "updateValues":Landroid/content/ContentValues;
    const-string v25, "_data"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    .end local v24    # "updateValues":Landroid/content/ContentValues;
    :cond_0
    const/16 v17, 0x0

    .line 495
    .local v17, "position":I
    if-nez v11, :cond_1

    .line 496
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v25, v0

    const/high16 v26, 0x10000

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 499
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    :cond_1
    if-nez v11, :cond_4

    .line 500
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v15

    .line 501
    .local v15, "outputBufferSize":I
    new-array v4, v15, [B

    .line 502
    .local v4, "b":[B
    const/16 v20, 0x0

    .line 503
    .local v20, "readLength":I
    const-wide/16 v22, 0x0

    .line 504
    .local v22, "timestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 506
    .local v18, "preTime":J
    :try_start_1
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mInfo.mDestination = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v28, v0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_3

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 511
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v20

    .line 513
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 514
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Receive file reached stream end at position"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .restart local v24    # "updateValues":Landroid/content/ContentValues;
    const-string v25, "current_bytes"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    .end local v4    # "b":[B
    .end local v15    # "outputBufferSize":I
    .end local v18    # "preTime":J
    .end local v20    # "readLength":I
    .end local v22    # "timestamp":J
    .end local v24    # "updateValues":Landroid/content/ContentValues;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 577
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "receiving file interrupted by user."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v21, 0x1ea

    .line 591
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 593
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 598
    :cond_6
    :goto_4
    return v21

    .line 479
    .end local v6    # "contentUri":Landroid/net/Uri;
    .end local v17    # "position":I
    :catch_0
    move-exception v10

    .line 480
    .local v10, "e1":Ljava/io/IOException;
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Error when openInputStream"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/16 v21, 0x1f0

    .line 482
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 518
    .end local v10    # "e1":Ljava/io/IOException;
    .restart local v4    # "b":[B
    .restart local v6    # "contentUri":Landroid/net/Uri;
    .restart local v15    # "outputBufferSize":I
    .restart local v17    # "position":I
    .restart local v18    # "preTime":J
    .restart local v20    # "readLength":I
    .restart local v22    # "timestamp":J
    :cond_7
    const/16 v25, 0x0

    :try_start_3
    move/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v5, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 519
    add-int v17, v17, v20

    .line 522
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Receive file position = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " readLength "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " bytes took "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCurrentByte:I

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 529
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mStopTaskId:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 530
    sub-long v26, v8, v18

    const-wide/16 v28, 0x1f4

    cmp-long v25, v26, v28

    if-gez v25, :cond_8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->intValue()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 533
    :cond_8
    move-wide/from16 v18, v8

    .line 535
    new-instance v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct {v13}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 536
    .local v13, "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 537
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 538
    move/from16 v0, v17

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    .line 539
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->intValue()I

    move-result v25

    move/from16 v0, v25

    iput v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f05001f

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v13, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    .line 546
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v25, 0x0

    aput-object v13, v16, v25

    .line 547
    .local v16, "params":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v14

    .line 548
    .local v14, "msg":Landroid/os/Message;
    const/16 v25, 0x64

    move/from16 v0, v25

    iput v0, v14, Landroid/os/Message;->what:I

    .line 549
    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 550
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->intValue()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;->updateProgress(II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 564
    .end local v8    # "currentTime":J
    .end local v13    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    .end local v14    # "msg":Landroid/os/Message;
    .end local v16    # "params":[Ljava/lang/Object;
    :catch_1
    move-exception v10

    .line 565
    .restart local v10    # "e1":Ljava/io/IOException;
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Error when receiving file"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v25, "Abort Received"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 568
    const/16 v21, 0x1ea

    .line 572
    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 542
    .end local v10    # "e1":Ljava/io/IOException;
    .restart local v8    # "currentTime":J
    .restart local v13    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    :cond_9
    const/16 v25, 0x0

    goto :goto_5

    .line 570
    .end local v8    # "currentTime":J
    .end local v13    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    .restart local v10    # "e1":Ljava/io/IOException;
    :cond_a
    const/16 v21, 0x1f0

    goto :goto_6

    .line 580
    .end local v4    # "b":[B
    .end local v10    # "e1":Ljava/io/IOException;
    .end local v15    # "outputBufferSize":I
    .end local v18    # "preTime":J
    .end local v20    # "readLength":I
    .end local v22    # "timestamp":J
    :cond_b
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v28, v0

    cmp-long v25, v26, v28

    if-nez v25, :cond_c

    .line 581
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Receiving file completed for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v21, 0xc8

    goto/16 :goto_3

    .line 584
    :cond_c
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Reading file failed at "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " of "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 586
    const/16 v21, 0x1eb

    goto/16 :goto_3

    .line 594
    :catch_2
    move-exception v7

    .line 595
    .local v7, "e":Ljava/io/IOException;
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Error when closing stream after send"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private declared-synchronized releaseWakeLocks()V
    .locals 1

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :cond_1
    monitor-exit p0

    return-void

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 185
    const-string v0, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShare for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 188
    return-void
.end method

.method public getCurrentByte()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCurrentByte:I

    return v0
.end method

.method public notifyStopTaskId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 705
    const-string v0, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStopTaskId::id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mStopTaskId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mStopTaskId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 680
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    const-string v2, "release WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->releaseWakeLocks()V

    .line 684
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 686
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 687
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 690
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 617
    const-string v9, "[Bluetooth.OPP]BtOppObexServer"

    const-string v10, "onConnect"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {p1}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 619
    const/4 v7, 0x0

    .line 621
    .local v7, "objectCount":Ljava/lang/Long;
    const/16 v9, 0x46

    :try_start_0
    invoke-virtual {p1, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v8, v0

    .line 622
    .local v8, "uuid":[B
    const-string v9, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onConnect(): uuid ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-eqz v8, :cond_0

    .line 624
    const/16 v9, 0xc6

    .line 660
    .end local v8    # "uuid":[B
    :goto_0
    return v9

    .line 627
    .restart local v8    # "uuid":[B
    :cond_0
    const/16 v9, 0xc0

    invoke-virtual {p1, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    instance-of v9, v9, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    if-eqz v9, :cond_2

    .line 634
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    check-cast v9, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "destination":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v6

    .line 641
    .local v6, "isHandover":Z
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getCarrierName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "carrierName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 645
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_3

    .line 647
    const-string v9, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    :goto_2
    const-string v9, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {v5, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const-string v9, "btopp.invokecarrier"

    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v9, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send broadcast ACTION_HANDOVER_STARTED, EXTRA_INVOKE_CARRIER = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 659
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    .line 660
    const/16 v9, 0xa0

    goto :goto_0

    .line 628
    .end local v2    # "carrierName":Ljava/lang/String;
    .end local v3    # "destination":Ljava/lang/String;
    .end local v6    # "isHandover":Z
    .end local v8    # "uuid":[B
    :catch_0
    move-exception v4

    .line 629
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "[Bluetooth.OPP]BtOppObexServer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/16 v9, 0xd0

    goto :goto_0

    .line 636
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v8    # "uuid":[B
    :cond_2
    const-string v3, "FF:FF:FF:00:00:00"

    .restart local v3    # "destination":Ljava/lang/String;
    goto :goto_1

    .line 649
    .restart local v2    # "carrierName":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "isHandover":Z
    :cond_3
    const-string v9, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 2
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 665
    const-string v0, "[Bluetooth.OPP]BtOppObexServer"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v0, 0xa0

    iput v0, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 667
    return-void
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 30
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 192
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onPut "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v18, 0xa0

    .line 199
    .local v18, "obexResponse":I
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCurrentByte:I

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 206
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "onput--, USER_CONFIRMATION_DENIED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v25, 0xc3

    .line 464
    :goto_0
    return v25

    .line 211
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "destination":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v11

    .line 219
    .local v11, "isWhitelisted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getCarrierName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "carrierName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 225
    .local v19, "pre_reject":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v20

    .line 226
    .local v20, "request":Ljavax/obex/HeaderSet;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 227
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 228
    .local v16, "name":Ljava/lang/String;
    const/16 v25, 0xc3

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 229
    .local v12, "length":Ljava/lang/Long;
    const/16 v25, 0x42

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 231
    .local v14, "mimeType":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_1

    .line 232
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "length is 0, reject the transfer"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v19, 0x1

    .line 234
    const/16 v18, 0xcb

    .line 237
    :cond_1
    if-eqz v16, :cond_2

    const-string v25, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 238
    :cond_2
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "name is null or empty, reject the transfer"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v19, 0x1

    .line 240
    const/16 v18, 0xc0

    .line 243
    :cond_3
    if-nez v19, :cond_4

    .line 246
    const-string v25, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 247
    .local v7, "dotIndex":I
    if-gez v7, :cond_9

    if-nez v14, :cond_9

    .line 248
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "There is no file extension or mime type,reject the transfer"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v19, 0x1

    .line 251
    const/16 v18, 0xc0

    .line 275
    .end local v7    # "dotIndex":I
    :cond_4
    :goto_2
    if-nez v19, :cond_7

    if-eqz v14, :cond_6

    if-nez v11, :cond_5

    sget-object v25, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v14, v0}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    :cond_5
    sget-object v25, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v14, v0}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 281
    :cond_6
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "mimeType is null or in unacceptable list, reject the transfer"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v19, 0x1

    .line 283
    const/16 v18, 0xcf

    .line 286
    :cond_7
    if-eqz v19, :cond_c

    const/16 v25, 0xa0

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 288
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "onput --, obexResponse != ResponseCodes.OBEX_HTTP_OK"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v25, v18

    .line 289
    goto/16 :goto_0

    .line 214
    .end local v4    # "carrierName":Ljava/lang/String;
    .end local v6    # "destination":Ljava/lang/String;
    .end local v11    # "isWhitelisted":Z
    .end local v12    # "length":Ljava/lang/Long;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v19    # "pre_reject":Z
    .end local v20    # "request":Ljavax/obex/HeaderSet;
    :cond_8
    const-string v6, "FF:FF:FF:00:00:00"

    .restart local v6    # "destination":Ljava/lang/String;
    goto/16 :goto_1

    .line 253
    .restart local v4    # "carrierName":Ljava/lang/String;
    .restart local v7    # "dotIndex":I
    .restart local v11    # "isWhitelisted":Z
    .restart local v12    # "length":Ljava/lang/Long;
    .restart local v14    # "mimeType":Ljava/lang/String;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v19    # "pre_reject":Z
    .restart local v20    # "request":Ljavax/obex/HeaderSet;
    :cond_9
    add-int/lit8 v25, v7, 0x1

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v13

    .line 255
    .local v13, "map":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v13, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 256
    .local v22, "type":Ljava/lang/String;
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Mimetype guessed from extension "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v22, :cond_b

    .line 258
    move-object/from16 v14, v22

    .line 267
    :cond_a
    :goto_3
    if-eqz v14, :cond_4

    .line 268
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 261
    :cond_b
    if-nez v14, :cond_a

    .line 262
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Can\'t get mimetype, reject the transfer"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    const/16 v19, 0x1

    .line 264
    const/16 v18, 0xcf

    goto :goto_3

    .line 292
    .end local v7    # "dotIndex":I
    .end local v9    # "extension":Ljava/lang/String;
    .end local v12    # "length":Ljava/lang/Long;
    .end local v13    # "map":Landroid/webkit/MimeTypeMap;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v20    # "request":Ljavax/obex/HeaderSet;
    .end local v22    # "type":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 293
    .local v8, "e":Ljava/io/IOException;
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onput--, get getReceivedHeaders error "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v25, 0xc0

    goto/16 :goto_0

    .line 297
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v12    # "length":Ljava/lang/Long;
    .restart local v14    # "mimeType":Ljava/lang/String;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v20    # "request":Ljavax/obex/HeaderSet;
    :cond_c
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v24, "values":Landroid/content/ContentValues;
    const-string v25, "hint"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v25, "total_bytes"

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v25, "mimetype"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v25, "destination"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v25, "direction"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v25, "timestamp"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 308
    const/16 v17, 0x1

    .line 310
    .local v17, "needConfirm":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v25, v0

    if-nez v25, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 312
    :cond_d
    const-string v25, "confirm"

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const/16 v17, 0x0

    .line 317
    :cond_e
    if-eqz v11, :cond_f

    .line 318
    const-string v25, "confirm"

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v25, "carrier_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/16 v17, 0x0

    .line 326
    :cond_f
    const/4 v5, 0x0

    .line 327
    .local v5, "contentUri":Landroid/net/Uri;
    monitor-enter p0

    .line 328
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 332
    :cond_10
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    .line 337
    if-eqz v17, :cond_11

    .line 338
    new-instance v10, Landroid/content/Intent;

    const-string v25, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v10, "in":Landroid/content/Intent;
    const-string v25, "com.android.bluetooth"

    const-class v26, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    .end local v10    # "in":Landroid/content/Intent;
    :cond_11
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insert contentUri: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mLocalShareInfoId = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "acquire partial WakeLock"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :cond_12
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 351
    const-wide/16 v26, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 352
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "while loop when serverblocking"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v25, v0

    if-nez v25, :cond_12

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    const-wide/32 v28, 0x1d4c0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 358
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "MSG_CONNECT_TIMEOUT sent"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 361
    :catch_1
    move-exception v8

    .line 362
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Interrupted in onPut blocking"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_13
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 365
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Server unblocked "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    monitor-enter p0

    .line 367
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    :cond_14
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_15

    .line 379
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Unexpected error!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 383
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "after confirm: userAccepted="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v21, 0xc8

    .line 386
    .local v21, "status":I
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 392
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_17

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v21, v0

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 397
    const/16 v18, 0xd0

    .line 401
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 403
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v23, "updateValues":Landroid/content/ContentValues;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 405
    const-string v25, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v25, "status"

    const/16 v26, 0xc0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I

    move-result v21

    .line 413
    const/16 v25, 0xc8

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 414
    const/16 v18, 0xd0

    .line 416
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 419
    .end local v23    # "updateValues":Landroid/content/ContentValues;
    :cond_19
    const/16 v25, 0xc8

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v15

    .line 421
    .local v15, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 422
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 463
    .end local v15    # "msg":Landroid/os/Message;
    :cond_1a
    :goto_5
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "onput --"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v25, v18

    .line 464
    goto/16 :goto_0

    .line 364
    .end local v21    # "status":I
    :catchall_0
    move-exception v25

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v25

    .line 370
    :catchall_1
    move-exception v25

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v25

    .line 424
    .restart local v21    # "status":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v15

    .line 427
    .restart local v15    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 432
    .end local v15    # "msg":Landroid/os/Message;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    .line 442
    :cond_1d
    const/16 v21, 0x1ea

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 445
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "Rejected incoming request"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1e

    .line 448
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 452
    :goto_6
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 455
    :cond_1e
    const/16 v18, 0xc3

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v15

    .line 458
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v25, 0x3

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 461
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    .line 449
    .end local v15    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v8

    .line 450
    .local v8, "e":Ljava/io/IOException;
    const-string v25, "[Bluetooth.OPP]BtOppObexServer"

    const-string v26, "error close file stream"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public preStart()V
    .locals 4

    .prologue
    .line 133
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    const-string v2, "acquire full WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 136
    :try_start_0
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create ServerSession with transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Ljavax/obex/ServerSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create server session error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCb(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;)V
    .locals 2
    .param p1, "up"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    .prologue
    .line 693
    const-string v0, "[Bluetooth.OPP]BtOppObexServer"

    const-string v1, "registerCb++ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    .line 695
    return-void
.end method

.method public start(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "numShares"    # I

    .prologue
    .line 147
    const-string v0, "[Bluetooth.OPP]BtOppObexServer"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 163
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 166
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 181
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    .line 182
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    const-string v2, "exception while closing ouputstream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[Bluetooth.OPP]BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterCb(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;)V
    .locals 2
    .param p1, "up"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    .prologue
    .line 698
    const-string v0, "[Bluetooth.OPP]BtOppObexServer"

    const-string v1, "unRegisterCb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    if-ne v0, p1, :cond_0

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mUp:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;

    .line 702
    :cond_0
    return-void
.end method

.method public unblock()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 126
    return-void
.end method
