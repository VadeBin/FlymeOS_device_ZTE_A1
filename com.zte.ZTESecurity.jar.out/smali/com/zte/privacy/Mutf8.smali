.class public final Lcom/zte/privacy/Mutf8;
.super Ljava/lang/Object;
.source "Mutf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "shortLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .local v4, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 74
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 76
    .local v0, "ch":C
    if-eqz v0, :cond_0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    .line 77
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 83
    :goto_1
    if-eqz p1, :cond_2

    const-wide/32 v6, 0xffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 84
    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string v6, "String more than 65535 UTF bytes long"

    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    const/16 v3, 0x7ff

    if-gt v0, v3, :cond_1

    .line 79
    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    goto :goto_1

    .line 81
    :cond_1
    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "ch":C
    :cond_3
    return-wide v4
.end method

.method public static decode(Lcom/zte/privacy/DataIn;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Lcom/zte/privacy/DataIn;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 40
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 42
    :goto_0
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v3

    int-to-char v0, v3

    .line 43
    .local v0, "a":C
    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 47
    :cond_0
    if-ge v0, v5, :cond_1

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 49
    :cond_1
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_3

    .line 50
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v1

    .line 51
    .local v1, "b":I
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_2

    .line 52
    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string v4, "bad second byte"

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_2
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 55
    .end local v1    # "b":I
    :cond_3
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_6

    .line 56
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v1

    .line 57
    .restart local v1    # "b":I
    invoke-interface {p0}, Lcom/zte/privacy/DataIn;->readUByte()I

    move-result v2

    .line 58
    .local v2, "c":I
    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v5, :cond_4

    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_5

    .line 59
    :cond_4
    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string v4, "bad second or third byte"

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_5
    and-int/lit8 v3, v0, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 63
    .end local v1    # "b":I
    .end local v2    # "c":I
    :cond_6
    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string v4, "bad byte"

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 95
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, p1

    .end local p1    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 97
    .local v0, "ch":C
    if-eqz v0, :cond_0

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    .line 98
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    int-to-byte v4, v0

    aput-byte v4, p0, v3

    .line 95
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, p1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 99
    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    .line 100
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 101
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v3

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_1

    .line 103
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 104
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 105
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    goto :goto_1

    .line 108
    .end local v0    # "ch":C
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/zte/privacy/Mutf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    .line 115
    .local v1, "utfCount":I
    new-array v0, v1, [B

    .line 116
    .local v0, "result":[B
    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lcom/zte/privacy/Mutf8;->encode([BILjava/lang/String;)V

    .line 117
    return-object v0
.end method
