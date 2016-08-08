.class public Lcom/android/bluetooth/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static littleEndianByteArrayToInt([B)I
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 35
    array-length v1, p0

    .line 36
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 37
    const/4 v2, 0x0

    .line 44
    :cond_0
    return v2

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    .local v2, "result":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 41
    aget-byte v4, p0, v0

    invoke-static {v4}, Lcom/android/bluetooth/util/NumberUtils;->unsignedByteToInt(B)I

    move-result v3

    .line 42
    .local v3, "value":I
    mul-int/lit8 v4, v0, 0x8

    shl-int v4, v3, v4

    add-int/2addr v2, v4

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static unsignedByteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 28
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
