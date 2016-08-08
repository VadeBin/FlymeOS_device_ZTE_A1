.class public final Lcom/zte/privacy/Utf8Utils;
.super Ljava/lang/Object;
.source "Utf8Utils.java"


# static fields
.field private static tempBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/privacy/Utf8Utils;->tempBuffer:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x5c

    const/16 v5, 0x10

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 252
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 255
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 257
    .local v0, "c":C
    const/16 v4, 0x20

    if-lt v0, v4, :cond_2

    if-ge v0, v7, :cond_2

    .line 258
    const/16 v4, 0x27

    if-eq v0, v4, :cond_0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    if-ne v0, v6, :cond_1

    .line 259
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_2
    if-gt v0, v7, :cond_3

    .line 264
    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_3
    :pswitch_0
    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    shr-int/lit8 v4, v0, 0xc

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    shr-int/lit8 v4, v0, 0x8

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    and-int/lit8 v4, v0, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :pswitch_1
    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    :pswitch_2
    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 272
    :pswitch_3
    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 45
    .local v3, "len":I
    mul-int/lit8 v6, v3, 0x3

    new-array v0, v6, [B

    .line 46
    .local v0, "bytes":[B
    const/4 v4, 0x0

    .line 48
    .local v4, "outAt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 50
    .local v1, "c":C
    if-eqz v1, :cond_0

    const/16 v6, 0x80

    if-ge v1, v6, :cond_0

    .line 51
    int-to-byte v6, v1

    aput-byte v6, v0, v4

    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 48
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/16 v6, 0x800

    if-ge v1, v6, :cond_1

    .line 54
    shr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 55
    add-int/lit8 v6, v4, 0x1

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 56
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 58
    :cond_1
    shr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 59
    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 60
    add-int/lit8 v6, v4, 0x2

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 61
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 65
    .end local v1    # "c":C
    :cond_2
    new-array v5, v4, [B

    .line 66
    .local v5, "result":[B
    invoke-static {v0, v8, v5, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    return-object v5
.end method

.method private static throwBadUtf8(II)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # I
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad utf-8 byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%08x"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static utf8BytesToString([BII)Ljava/lang/String;
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v10, 0x80

    .line 86
    sget-object v8, Lcom/zte/privacy/Utf8Utils;->tempBuffer:[C

    if-eqz v8, :cond_0

    sget-object v8, Lcom/zte/privacy/Utf8Utils;->tempBuffer:[C

    array-length v8, v8

    if-ge v8, p2, :cond_1

    .line 87
    :cond_0
    new-array v8, p2, [C

    sput-object v8, Lcom/zte/privacy/Utf8Utils;->tempBuffer:[C

    .line 89
    :cond_1
    sget-object v1, Lcom/zte/privacy/Utf8Utils;->tempBuffer:[C

    .line 90
    .local v1, "chars":[C
    const/4 v3, 0x0

    .line 92
    .local v3, "outAt":I
    move v0, p1

    .local v0, "at":I
    :goto_0
    if-lez p2, :cond_a

    .line 93
    aget-byte v8, p0, v0

    and-int/lit16 v4, v8, 0xff

    .line 95
    .local v4, "v0":I
    shr-int/lit8 v8, v4, 0x4

    packed-switch v8, :pswitch_data_0

    .line 163
    :pswitch_0
    invoke-static {v4, v0}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    .line 170
    .end local v4    # "v0":I
    :goto_1
    return-object v8

    .line 105
    .restart local v4    # "v0":I
    :pswitch_1
    add-int/lit8 p2, p2, -0x1

    .line 106
    if-nez v4, :cond_2

    .line 108
    invoke-static {v4, v0}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 110
    :cond_2
    int-to-char v2, v4

    .line 111
    .local v2, "out":C
    add-int/lit8 v0, v0, 0x1

    .line 166
    :goto_2
    aput-char v2, v1, v3

    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 168
    goto :goto_0

    .line 117
    .end local v2    # "out":C
    :pswitch_2
    add-int/lit8 p2, p2, -0x2

    .line 118
    if-gez p2, :cond_3

    .line 119
    invoke-static {v4, v0}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 121
    :cond_3
    add-int/lit8 v8, v0, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v5, v8, 0xff

    .line 122
    .local v5, "v1":I
    and-int/lit16 v8, v5, 0xc0

    if-eq v8, v10, :cond_4

    .line 123
    add-int/lit8 v8, v0, 0x1

    invoke-static {v5, v8}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 125
    :cond_4
    and-int/lit8 v8, v4, 0x1f

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v9, v5, 0x3f

    or-int v7, v8, v9

    .line 126
    .local v7, "value":I
    if-eqz v7, :cond_5

    if-ge v7, v10, :cond_5

    .line 130
    add-int/lit8 v8, v0, 0x1

    invoke-static {v5, v8}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 132
    :cond_5
    int-to-char v2, v7

    .line 133
    .restart local v2    # "out":C
    add-int/lit8 v0, v0, 0x2

    .line 134
    goto :goto_2

    .line 138
    .end local v2    # "out":C
    .end local v5    # "v1":I
    .end local v7    # "value":I
    :pswitch_3
    add-int/lit8 p2, p2, -0x3

    .line 139
    if-gez p2, :cond_6

    .line 140
    invoke-static {v4, v0}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 142
    :cond_6
    add-int/lit8 v8, v0, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v5, v8, 0xff

    .line 143
    .restart local v5    # "v1":I
    and-int/lit16 v8, v5, 0xc0

    if-eq v8, v10, :cond_7

    .line 144
    add-int/lit8 v8, v0, 0x1

    invoke-static {v5, v8}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 146
    :cond_7
    add-int/lit8 v8, v0, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v6, v8, 0xff

    .line 147
    .local v6, "v2":I
    and-int/lit16 v8, v5, 0xc0

    if-eq v8, v10, :cond_8

    .line 148
    add-int/lit8 v8, v0, 0x2

    invoke-static {v6, v8}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 150
    :cond_8
    and-int/lit8 v8, v4, 0xf

    shl-int/lit8 v8, v8, 0xc

    and-int/lit8 v9, v5, 0x3f

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    and-int/lit8 v9, v6, 0x3f

    or-int v7, v8, v9

    .line 151
    .restart local v7    # "value":I
    const/16 v8, 0x800

    if-ge v7, v8, :cond_9

    .line 155
    add-int/lit8 v8, v0, 0x2

    invoke-static {v6, v8}, Lcom/zte/privacy/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 157
    :cond_9
    int-to-char v2, v7

    .line 158
    .restart local v2    # "out":C
    add-int/lit8 v0, v0, 0x3

    .line 159
    goto :goto_2

    .line 170
    .end local v2    # "out":C
    .end local v4    # "v0":I
    .end local v5    # "v1":I
    .end local v6    # "v2":I
    .end local v7    # "value":I
    :cond_a
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static writeEscapedChar(Ljava/io/Writer;C)V
    .locals 4
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7f

    const/16 v2, 0x5c

    const/16 v1, 0x10

    .line 190
    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    if-ge p1, v3, :cond_2

    .line 191
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 194
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 216
    :goto_0
    return-void

    .line 196
    :cond_2
    if-gt p1, v3, :cond_3

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 210
    :cond_3
    :pswitch_0
    const-string v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 211
    shr-int/lit8 v0, p1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 212
    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 213
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 214
    and-int/lit8 v0, p1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v0, "\\r"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_3
    const-string v0, "\\t"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    const/16 v4, 0x5c

    const/16 v3, 0x10

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 222
    .local v0, "c":C
    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    if-ge v0, v5, :cond_2

    .line 223
    const/16 v2, 0x27

    if-eq v0, v2, :cond_0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 226
    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 219
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    if-gt v0, v5, :cond_3

    .line 229
    packed-switch v0, :pswitch_data_0

    .line 242
    :cond_3
    :pswitch_0
    const-string v2, "\\u"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    shr-int/lit8 v2, v0, 0xc

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 244
    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 245
    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 246
    and-int/lit8 v2, v0, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 231
    :pswitch_1
    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :pswitch_2
    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :pswitch_3
    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    .end local v0    # "c":C
    :cond_4
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
