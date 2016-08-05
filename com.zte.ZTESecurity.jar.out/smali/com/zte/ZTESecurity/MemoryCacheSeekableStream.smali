.class public final Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;
.super Lcom/zte/ZTESecurity/SeekableStream;
.source "MemoryCacheSeekableStream.java"


# static fields
.field private static final SECTOR_MASK:I = 0x1ff

.field private static final SECTOR_SHIFT:I = 0x9

.field private static final SECTOR_SIZE:I = 0x200


# instance fields
.field private data:Ljava/util/List;

.field foundEOS:Z

.field length:I

.field private pointer:J

.field sectors:I

.field private src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "src"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Lcom/zte/ZTESecurity/SeekableStream;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->data:Ljava/util/List;

    .line 61
    iput v2, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->sectors:I

    .line 64
    iput v2, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    .line 67
    iput-boolean v2, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->foundEOS:Z

    .line 75
    iput-object p1, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->src:Ljava/io/InputStream;

    .line 76
    return-void
.end method

.method private readUntil(J)J
    .locals 11
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    int-to-long v8, v7

    cmp-long v7, p1, v8

    if-gez v7, :cond_0

    .line 122
    .end local p1    # "pos":J
    :goto_0
    return-wide p1

    .line 90
    .restart local p1    # "pos":J
    :cond_0
    iget-boolean v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->foundEOS:Z

    if-eqz v7, :cond_1

    .line 91
    iget v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    int-to-long p1, v7

    goto :goto_0

    .line 94
    :cond_1
    const/16 v7, 0x9

    shr-long v8, p1, v7

    long-to-int v5, v8

    .line 97
    .local v5, "sector":I
    iget v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    shr-int/lit8 v6, v7, 0x9

    .line 100
    .local v6, "startSector":I
    move v1, v6

    .local v1, "i":I
    :goto_1
    if-gt v1, v5, :cond_4

    .line 101
    const/16 v7, 0x200

    new-array v0, v7, [B

    .line 102
    .local v0, "buf":[B
    iget-object v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->data:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const/16 v2, 0x200

    .line 106
    .local v2, "len":I
    const/4 v4, 0x0

    .line 107
    .local v4, "off":I
    :goto_2
    if-lez v2, :cond_3

    .line 108
    iget-object v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->src:Ljava/io/InputStream;

    invoke-virtual {v7, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 110
    .local v3, "nbytes":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    .line 111
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->foundEOS:Z

    .line 112
    iget v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    int-to-long p1, v7

    goto :goto_0

    .line 114
    :cond_2
    add-int/2addr v4, v3

    .line 115
    sub-int/2addr v2, v3

    .line 118
    iget v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    goto :goto_2

    .line 100
    .end local v3    # "nbytes":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v4    # "off":I
    :cond_4
    iget v7, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->length:I

    int-to-long p1, v7

    goto :goto_0
.end method


# virtual methods
.method public canSeekBackwards()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public getFilePointer()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    return-wide v0
.end method

.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    .line 173
    iget-wide v6, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    add-long v2, v6, v10

    .line 174
    .local v2, "next":J
    invoke-direct {p0, v2, v3}, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->readUntil(J)J

    move-result-wide v4

    .line 175
    .local v4, "pos":J
    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->data:Ljava/util/List;

    iget-wide v6, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    const/16 v8, 0x9

    shr-long/2addr v6, v8

    long-to-int v6, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 178
    .local v0, "buf":[B
    iget-wide v6, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    add-long v8, v6, v10

    iput-wide v8, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    const-wide/16 v8, 0x1ff

    and-long/2addr v6, v8

    long-to-int v1, v6

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 180
    .end local v0    # "buf":[B
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x1ff

    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 235
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_2

    .line 236
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 238
    :cond_2
    if-nez p3, :cond_3

    .line 239
    const/4 v1, 0x0

    .line 253
    :goto_0
    return v1

    .line 242
    :cond_3
    iget-wide v4, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->readUntil(J)J

    move-result-wide v2

    .line 244
    .local v2, "pos":J
    iget-wide v4, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    .line 245
    const/4 v1, -0x1

    goto :goto_0

    .line 248
    :cond_4
    iget-object v4, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->data:Ljava/util/List;

    iget-wide v6, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    const/16 v5, 0x9

    shr-long/2addr v6, v5

    long-to-int v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 249
    .local v0, "buf":[B
    iget-wide v4, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    and-long/2addr v4, v8

    long-to-int v4, v4

    rsub-int v4, v4, 0x200

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 250
    .local v1, "nbytes":I
    iget-wide v4, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    and-long/2addr v4, v8

    long-to-int v4, v4

    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 252
    iget-wide v4, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 156
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MemoryCacheSeekableStream0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iput-wide p1, p0, Lcom/zte/ZTESecurity/MemoryCacheSeekableStream;->pointer:J

    .line 159
    return-void
.end method
