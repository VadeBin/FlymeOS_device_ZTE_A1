.class public Lcom/zte/privacy/ArrayDataIn;
.super Ljava/io/ByteArrayInputStream;
.source "ArrayDataIn.java"

# interfaces
.implements Lcom/zte/privacy/DataIn;


# instance fields
.field private isLE:Z

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isLE"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ArrayDataIn;->stack:Ljava/util/Stack;

    .line 55
    iput-boolean p4, p0, Lcom/zte/privacy/ArrayDataIn;->isLE:Z

    .line 56
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "isLE"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ArrayDataIn;->stack:Ljava/util/Stack;

    .line 50
    iput-boolean p2, p0, Lcom/zte/privacy/ArrayDataIn;->isLE:Z

    .line 51
    return-void
.end method

.method public static be([B)Lcom/zte/privacy/ArrayDataIn;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 29
    new-instance v0, Lcom/zte/privacy/ArrayDataIn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ArrayDataIn;-><init>([BZ)V

    return-object v0
.end method

.method public static be([BII)Lcom/zte/privacy/ArrayDataIn;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 33
    new-instance v0, Lcom/zte/privacy/ArrayDataIn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/zte/privacy/ArrayDataIn;-><init>([BIIZ)V

    return-object v0
.end method

.method public static le([B)Lcom/zte/privacy/ArrayDataIn;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 37
    new-instance v0, Lcom/zte/privacy/ArrayDataIn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ArrayDataIn;-><init>([BZ)V

    return-object v0
.end method

.method public static le([BII)Lcom/zte/privacy/ArrayDataIn;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 41
    new-instance v0, Lcom/zte/privacy/ArrayDataIn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/zte/privacy/ArrayDataIn;-><init>([BIIZ)V

    return-object v0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->mark:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public move(I)V
    .locals 1
    .param p1, "absOffset"    # I

    .prologue
    .line 65
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    add-int/2addr v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 66
    return-void
.end method

.method public pop()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zte/privacy/ArrayDataIn;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 71
    return-void
.end method

.method public push()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/privacy/ArrayDataIn;->stack:Ljava/util/Stack;

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public pushMove(I)V
    .locals 0
    .param p1, "absOffset"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->push()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ArrayDataIn;->move(I)V

    .line 82
    return-void
.end method

.method public readByte()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readBytes(I)[B
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [B

    .line 93
    .local v0, "data":[B
    :try_start_0
    invoke-super {p0, v0}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readIntx()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUIntx()I

    move-result v0

    return v0
.end method

.method public readLeb128()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "bitpos":I
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "vln":J
    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    .line 111
    .local v1, "inp":I
    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 112
    add-int/lit8 v0, v0, 0x7

    .line 113
    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_0

    .line 117
    add-int/lit8 v4, v0, -0x1

    shl-long v4, v8, v4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 118
    shl-long v4, v8, v0

    sub-long/2addr v2, v4

    .line 120
    :cond_1
    return-wide v2
.end method

.method public readShortx()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUShortx()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readUIntx()I
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/zte/privacy/ArrayDataIn;->isLE:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public readULeb128()J
    .locals 6

    .prologue
    .line 147
    const-wide/16 v2, 0x0

    .line 148
    .local v2, "value":J
    const/4 v1, 0x0

    .line 149
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v0

    .line 150
    .local v0, "b":I
    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 151
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v1

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 152
    add-int/lit8 v1, v1, 0x7

    .line 153
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v0

    goto :goto_0

    .line 155
    :cond_0
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v1

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 156
    return-wide v2
.end method

.method public readUShortx()I
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/zte/privacy/ArrayDataIn;->isLE:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/zte/privacy/ArrayDataIn;->readUByte()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    .line 170
    int-to-long v0, p1

    invoke-super {p0, v0, v1}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 171
    return-void
.end method
