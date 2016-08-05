.class public abstract Lcom/zte/privacy/DataInputDataIn;
.super Ljava/lang/Object;
.source "DataInputDataIn.java"

# interfaces
.implements Lcom/zte/privacy/DataIn;


# instance fields
.field protected in:Ljava/io/DataInput;

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
.method public constructor <init>(Ljava/io/DataInput;Z)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "isLE"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/DataInputDataIn;->stack:Ljava/util/Stack;

    .line 31
    iput-object p1, p0, Lcom/zte/privacy/DataInputDataIn;->in:Ljava/io/DataInput;

    .line 32
    iput-boolean p2, p0, Lcom/zte/privacy/DataInputDataIn;->isLE:Z

    .line 33
    return-void
.end method


# virtual methods
.method public pop()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/privacy/DataInputDataIn;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/DataInputDataIn;->move(I)V

    .line 38
    return-void
.end method

.method public push()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/privacy/DataInputDataIn;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public pushMove(I)V
    .locals 0
    .param p1, "absOffset"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->push()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/zte/privacy/DataInputDataIn;->move(I)V

    .line 49
    return-void
.end method

.method public readByte()I
    .locals 2

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/DataInputDataIn;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readByte()B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readBytes(I)[B
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 62
    new-array v0, p1, [B

    .line 64
    .local v0, "data":[B
    :try_start_0
    iget-object v2, p0, Lcom/zte/privacy/DataInputDataIn;->in:Ljava/io/DataInput;

    invoke-interface {v2, v0}, Ljava/io/DataInput;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/zte/privacy/DexException;

    invoke-direct {v2, v1}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readIntx()I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUIntx()I

    move-result v0

    return v0
.end method

.method public readLeb128()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "bitpos":I
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "vln":J
    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    .line 82
    .local v1, "inp":I
    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 83
    add-int/lit8 v0, v0, 0x7

    .line 84
    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_0

    .line 88
    add-int/lit8 v4, v0, -0x1

    shl-long v4, v8, v4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 89
    shl-long v4, v8, v0

    sub-long/2addr v2, v4

    .line 91
    :cond_1
    return-wide v2
.end method

.method public readShortx()I
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/DataInputDataIn;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readShort()S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readUByte()I
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/DataInputDataIn;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readUIntx()I
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/zte/privacy/DataInputDataIn;->isLE:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public readULeb128()J
    .locals 6

    .prologue
    .line 123
    const-wide/16 v2, 0x0

    .line 124
    .local v2, "value":J
    const/4 v1, 0x0

    .line 125
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v0

    .line 126
    .local v0, "b":I
    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 127
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v1

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 128
    add-int/lit8 v1, v1, 0x7

    .line 129
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v0

    goto :goto_0

    .line 131
    :cond_0
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v1

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 132
    return-wide v2
.end method

.method public readUShortx()I
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/zte/privacy/DataInputDataIn;->isLE:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/zte/privacy/DataInputDataIn;->readUByte()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/DataInputDataIn;->in:Ljava/io/DataInput;

    invoke-interface {v1, p1}, Ljava/io/DataInput;->skipBytes(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
