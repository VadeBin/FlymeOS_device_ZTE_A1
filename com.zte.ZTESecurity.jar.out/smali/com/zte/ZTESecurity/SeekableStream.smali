.class public abstract Lcom/zte/ZTESecurity/SeekableStream;
.super Ljava/io/InputStream;
.source "SeekableStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field protected markPos:J

.field private ruileBuf:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 192
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/ZTESecurity/SeekableStream;->markPos:J

    .line 669
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zte/ZTESecurity/SeekableStream;->ruileBuf:[B

    return-void
.end method


# virtual methods
.method public canSeekBackwards()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 940
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 941
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->close()V

    .line 942
    return-void
.end method

.method public abstract getFilePointer()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized mark(I)V
    .locals 4
    .param p1, "readLimit"    # I

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zte/ZTESecurity/SeekableStream;->markPos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/zte/ZTESecurity/SeekableStream;->markPos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->canSeekBackwards()Z

    move-result v0

    return v0
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 346
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 347
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 349
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 372
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 373
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 375
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 539
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 540
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 541
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 543
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public final readCharLE()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 568
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 569
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 570
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 572
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleLE()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readLongLE()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatLE()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readIntLE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/ZTESecurity/SeekableStream;->readFully([BII)V

    .line 279
    return-void
.end method

.method public final readFully([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "n":I
    :cond_0
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/zte/ZTESecurity/SeekableStream;->read([BII)I

    move-result v0

    .line 300
    .local v0, "count":I
    if-gez v0, :cond_1

    .line 301
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 303
    :cond_1
    add-int/2addr v1, v0

    .line 304
    if-lt v1, p3, :cond_0

    .line 305
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 597
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 598
    .local v1, "ch2":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v2

    .line 599
    .local v2, "ch3":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v3

    .line 600
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 601
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 603
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public final readIntLE()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 629
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 630
    .local v1, "ch2":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v2

    .line 631
    .local v2, "ch3":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v3

    .line 632
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 633
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 635
    :cond_0
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public final readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 880
    .local v4, "input":Ljava/lang/StringBuffer;
    const/4 v0, -0x1

    .line 881
    .local v0, "c":I
    const/4 v1, 0x0

    .line 883
    .local v1, "eol":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 884
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 885
    sparse-switch v0, :sswitch_data_0

    .line 898
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 888
    :sswitch_0
    const/4 v1, 0x1

    .line 889
    goto :goto_0

    .line 891
    :sswitch_1
    const/4 v1, 0x1

    .line 892
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->getFilePointer()J

    move-result-wide v2

    .line 893
    .local v2, "cur":J
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 894
    invoke-virtual {p0, v2, v3}, Lcom/zte/ZTESecurity/SeekableStream;->seek(J)V

    goto :goto_0

    .line 903
    .end local v2    # "cur":J
    :cond_1
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 904
    const/4 v5, 0x0

    .line 906
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 885
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readLongLE()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readIntLE()I

    move-result v0

    .line 765
    .local v0, "i1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->readIntLE()I

    move-result v1

    .line 766
    .local v1, "i2":I
    int-to-long v2, v1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 422
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 423
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 424
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 426
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public final readShortLE()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 452
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 453
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 454
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 456
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 393
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 394
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 396
    :cond_0
    return v0
.end method

.method public final readUnsignedInt()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v8

    int-to-long v0, v8

    .line 660
    .local v0, "ch1":J
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v8

    int-to-long v2, v8

    .line 661
    .local v2, "ch2":J
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v8

    int-to-long v4, v8

    .line 662
    .local v4, "ch3":J
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v8

    int-to-long v6, v8

    .line 663
    .local v6, "ch4":J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 664
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 666
    :cond_0
    const/16 v8, 0x18

    shl-long v8, v0, v8

    const/16 v10, 0x10

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/4 v10, 0x0

    shl-long v10, v6, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public final readUnsignedIntLE()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 693
    iget-object v8, p0, Lcom/zte/ZTESecurity/SeekableStream;->ruileBuf:[B

    invoke-virtual {p0, v8}, Lcom/zte/ZTESecurity/SeekableStream;->readFully([B)V

    .line 694
    iget-object v8, p0, Lcom/zte/ZTESecurity/SeekableStream;->ruileBuf:[B

    aget-byte v8, v8, v12

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 695
    .local v0, "ch1":J
    iget-object v8, p0, Lcom/zte/ZTESecurity/SeekableStream;->ruileBuf:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v2, v8

    .line 696
    .local v2, "ch2":J
    iget-object v8, p0, Lcom/zte/ZTESecurity/SeekableStream;->ruileBuf:[B

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v4, v8

    .line 697
    .local v4, "ch3":J
    iget-object v8, p0, Lcom/zte/ZTESecurity/SeekableStream;->ruileBuf:[B

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v6, v8

    .line 699
    .local v6, "ch4":J
    const/16 v8, 0x18

    shl-long v8, v6, v8

    const/16 v10, 0x10

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    shl-long v10, v0, v12

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 481
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 482
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 483
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 485
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public final readUnsignedShortLE()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v0

    .line 511
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/zte/ZTESecurity/SeekableStream;->read()I

    move-result v1

    .line 512
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 513
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 515
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/zte/ZTESecurity/SeekableStream;->markPos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 213
    iget-wide v0, p0, Lcom/zte/ZTESecurity/SeekableStream;->markPos:J

    invoke-virtual {p0, v0, v1}, Lcom/zte/ZTESecurity/SeekableStream;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract seek(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipBytes(I)I
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    if-gtz p1, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/zte/ZTESecurity/SeekableStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method
