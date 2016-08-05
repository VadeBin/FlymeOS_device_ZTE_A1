.class public Lcom/zte/ZTESecurity/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/ZTESecurity/Hex;->DIGITS_LOWER:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C

    .prologue
    .line 83
    array-length v3, p0

    .line 85
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 86
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 92
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 93
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/zte/ZTESecurity/Hex;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 94
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 95
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/zte/ZTESecurity/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "f":I
    :cond_1
    return-object v4
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 44
    sget-object v0, Lcom/zte/ZTESecurity/Hex;->DIGITS_LOWER:[C

    invoke-static {p0, v0}, Lcom/zte/ZTESecurity/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 60
    array-length v3, p0

    .line 61
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 63
    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 64
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    .line 65
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-object v4
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I

    .prologue
    .line 115
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 116
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    return v0
.end method
