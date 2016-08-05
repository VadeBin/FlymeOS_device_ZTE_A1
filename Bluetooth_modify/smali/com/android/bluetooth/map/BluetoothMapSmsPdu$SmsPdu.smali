.class public Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
.super Ljava/lang/Object;
.source "BluetoothMapSmsPdu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapSmsPdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsPdu"
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_DATA_MSG_ID:B = 0x0t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final TP_MIT_DELIVER:B = 0x0t

.field private static final TP_MMS_NO_MORE:B = 0x4t

.field private static final TP_RP_NO_REPLY_PATH:B = 0x0t

.field private static final TP_SRI_NO_REPORT:B = 0x0t

.field private static final TP_UDHI_MASK:B = 0x40t


# instance fields
.field private mData:[B

.field private mEncoding:I

.field private mLanguageShiftTable:I

.field private mLanguageTable:I

.field private mMsgSeptetCount:I

.field private mScAddress:[B

.field private mType:I

.field private mUserDataMsgOffset:I

.field private mUserDataSeptetPadding:I


# direct methods
.method constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    .line 74
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 81
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 82
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    .line 86
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    .line 87
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    .line 88
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    .line 89
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    .line 90
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 91
    return-void
.end method

.method constructor <init>([BIII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "encoding"    # I
    .param p3, "type"    # I
    .param p4, "languageTable"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    .line 74
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 81
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 82
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    .line 102
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    .line 103
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    .line 104
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    .line 105
    return-void
.end method

.method private cdmaGetParameterOffset(B)I
    .locals 8
    .param p1, "parameterId"    # B

    .prologue
    .line 165
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    .local v5, "pdu":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 167
    .local v4, "offset":I
    const/4 v3, 0x0

    .line 170
    .local v3, "found":Z
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 172
    :goto_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 173
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 174
    .local v0, "currentId":I
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 176
    .local v1, "currentLen":I
    if-ne v0, p1, :cond_1

    .line 177
    const/4 v3, 0x1

    .line 185
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 190
    :goto_1
    if-eqz v3, :cond_2

    .line 193
    .end local v4    # "offset":I
    :goto_2
    return v4

    .line 181
    .restart local v0    # "currentId":I
    .restart local v1    # "currentLen":I
    .restart local v4    # "offset":I
    :cond_1
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    add-int/lit8 v6, v1, 0x2

    add-int/2addr v4, v6

    .line 184
    goto :goto_0

    .line 186
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "[MAP]BluetoothMapSmsPdu"

    const-string v7, "[cdmaGetParameterOffset]: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private cdmaGetSubParameterOffset(B)I
    .locals 8
    .param p1, "subParameterId"    # B

    .prologue
    .line 199
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 200
    .local v5, "pdu":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 201
    .local v4, "offset":I
    const/4 v3, 0x0

    .line 202
    .local v3, "found":Z
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v6

    add-int/lit8 v4, v6, 0x2

    .line 203
    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 206
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 207
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 208
    .local v0, "currentId":I
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 210
    .local v1, "currentLen":I
    if-ne v0, p1, :cond_1

    .line 211
    const/4 v3, 0x1

    .line 219
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 224
    :goto_1
    if-eqz v3, :cond_2

    .line 227
    .end local v4    # "offset":I
    :goto_2
    return v4

    .line 215
    .restart local v0    # "currentId":I
    .restart local v1    # "currentLen":I
    .restart local v4    # "offset":I
    :cond_1
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v6, v1, 0x2

    add-int/2addr v4, v6

    .line 218
    goto :goto_0

    .line 220
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "[MAP]BluetoothMapSmsPdu"

    const-string v7, "[cdmaGetParameterOffset]: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private gsmSubmitGetTpDcsOffset()I
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpPidOffset()I
    .locals 4

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 284
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    .line 285
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrongly formatted gsm submit PDU. offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_1
    return v0
.end method

.method private gsmSubmitGetTpUdOffset()I
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpUdlOffset()I
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 311
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    :goto_0
    return v0

    .line 304
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 306
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V
    .locals 16
    .param p1, "header"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v12, "yyMMddHHmmss"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 364
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 365
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, "timeStr":Ljava/lang/String;
    const-string v12, "[MAP]BluetoothMapSmsPdu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[gsmWriteDate] Generated time string: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 369
    .local v10, "timeChars":[B
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 370
    add-int/lit8 v12, v5, 0x1

    aget-byte v12, v10, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    aget-byte v13, v10, v5

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 369
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 374
    .local v2, "cal":Ljava/util/Calendar;
    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v12, v13

    const v13, 0xdbba0

    div-int v7, v12, v13

    .line 376
    .local v7, "offset":I
    if-gez v7, :cond_1

    .line 377
    const-string v12, "%1$02d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    neg-int v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, "offsetString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 379
    .local v8, "offsetChars":[C
    const/4 v12, 0x1

    aget-char v12, v8, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    or-int/lit8 v12, v12, 0x40

    const/4 v13, 0x0

    aget-char v13, v8, v13

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 386
    :goto_1
    return-void

    .line 382
    .end local v8    # "offsetChars":[C
    .end local v9    # "offsetString":Ljava/lang/String;
    :cond_1
    const-string v12, "%1$02d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 383
    .restart local v9    # "offsetString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 384
    .restart local v8    # "offsetChars":[C
    const/4 v12, 0x1

    aget-char v12, v8, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    aget-char v13, v8, v13

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method


# virtual methods
.method public cdmaChangeToDeliverPdu(J)V
    .locals 5
    .param p1, "date"    # J

    .prologue
    .line 238
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    if-nez v2, :cond_0

    .line 239
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v0

    .line 242
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v2

    if-ge v2, v0, :cond_1

    .line 243
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v0

    .line 247
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v0

    .line 248
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v2

    if-ge v2, v0, :cond_2

    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 253
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetSubParameterOffset(B)I

    move-result v0

    .line 255
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v2

    add-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_3

    .line 256
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 258
    .local v1, "tmp":I
    and-int/lit8 v1, v1, 0xf

    .line 260
    or-int/lit8 v1, v1, 0x10

    .line 262
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    add-int/lit8 v3, v0, 0x2

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 271
    return-void

    .line 265
    .end local v1    # "tmp":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    return v0
.end method

.method public getEncodingString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    if-ne v0, v1, :cond_1

    .line 444
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    packed-switch v0, :pswitch_data_0

    .line 456
    const-string v0, ""

    .line 470
    :goto_0
    return-object v0

    .line 446
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    if-nez v0, :cond_0

    .line 447
    const-string v0, "G-7BIT"

    goto :goto_0

    .line 449
    :cond_0
    const-string v0, "G-7BITEXT"

    goto :goto_0

    .line 451
    :pswitch_1
    const-string v0, "G-8BIT"

    goto :goto_0

    .line 453
    :pswitch_2
    const-string v0, "G-16BIT"

    goto :goto_0

    .line 459
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    packed-switch v0, :pswitch_data_1

    .line 470
    const-string v0, ""

    goto :goto_0

    .line 461
    :pswitch_3
    const-string v0, "C-7ASCII"

    goto :goto_0

    .line 463
    :pswitch_4
    const-string v0, "C-8BIT"

    goto :goto_0

    .line 465
    :pswitch_5
    const-string v0, "C-UNICODE"

    goto :goto_0

    .line 467
    :pswitch_6
    const-string v0, "C-KOREAN"

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 459
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getLanguageShiftTable()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    return v0
.end method

.method public getLanguageTable()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    return v0
.end method

.method public getMsgSeptetCount()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    return v0
.end method

.method public getScAddress()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    return v0
.end method

.method public getUserDataMsgOffset()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    return v0
.end method

.method public getUserDataMsgSize()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUserDataSeptetPadding()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    return v0
.end method

.method public gsmChangeToDeliverPdu(JLjava/lang/String;)V
    .locals 9
    .param p1, "date"    # J
    .param p3, "originator"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 407
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x16

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 409
    .local v2, "newPdu":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 411
    .local v4, "userDataLength":I
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v5, v5, 0x40

    or-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 413
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    .line 414
    .local v1, "encodedAddress":[B
    if-eqz v1, :cond_1

    .line 415
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    .line 416
    .local v3, "padding":I
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 418
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 424
    .end local v3    # "padding":I
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v6

    aget-byte v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 425
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v6

    aget-byte v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 427
    invoke-direct {p0, v2, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V

    .line 428
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v6

    aget-byte v5, v5, v6

    and-int/lit16 v4, v5, 0xff

    .line 429
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 431
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v7, v7

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    .line 437
    return-void

    .line 420
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    const/16 v5, 0x81

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 432
    .end local v1    # "encodedAddress":[B
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "[MAP]BluetoothMapSmsPdu"

    const-string v6, "[gsmChangeToDeliverPdu] IOException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Failed to change type to deliver PDU."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public gsmDecodeUserDataHeader()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 318
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 320
    .local v3, "pdu":Ljava/io/ByteArrayInputStream;
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 321
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 322
    .local v7, "userDataLength":I
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitHasUserDataHeader()Z

    move-result v10

    if-ne v10, v8, :cond_2

    .line 323
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 326
    .local v6, "userDataHeaderLength":I
    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    if-ne v10, v8, :cond_0

    .line 328
    new-array v4, v6, [B

    .line 330
    .local v4, "udh":[B
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 335
    .local v5, "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v10, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    .line 336
    iget v10, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    iput v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    .line 338
    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v1, v10, 0x8

    .line 339
    .local v1, "headerBits":I
    div-int/lit8 v2, v1, 0x7

    .line 340
    .local v2, "headerSeptets":I
    rem-int/lit8 v10, v1, 0x7

    if-lez v10, :cond_1

    :goto_1
    add-int/2addr v2, v8

    .line 341
    mul-int/lit8 v8, v2, 0x7

    sub-int/2addr v8, v1

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 342
    sub-int v8, v7, v2

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 344
    .end local v1    # "headerBits":I
    .end local v2    # "headerSeptets":I
    .end local v4    # "udh":[B
    .end local v5    # "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 353
    .end local v6    # "userDataHeaderLength":I
    :goto_2
    const-string v8, "[MAP]BluetoothMapSmsPdu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gsmDecodeUserDataHeader] encoding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v8, "[MAP]BluetoothMapSmsPdu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gsmDecodeUserDataHeader] msgSeptetCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v8, "[MAP]BluetoothMapSmsPdu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gsmDecodeUserDataHeader] userDataSeptetPadding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v8, "[MAP]BluetoothMapSmsPdu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gsmDecodeUserDataHeader] languageShiftTable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v8, "[MAP]BluetoothMapSmsPdu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gsmDecodeUserDataHeader] languageTable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v8, "[MAP]BluetoothMapSmsPdu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gsmDecodeUserDataHeader] userDataMsgOffset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 331
    .restart local v4    # "udh":[B
    .restart local v6    # "userDataHeaderLength":I
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "[MAP]BluetoothMapSmsPdu"

    const-string v11, "[gsmDecodeUserDataHeader] unable to read userDataHeader"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "headerBits":I
    .restart local v2    # "headerSeptets":I
    .restart local v5    # "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    move v8, v9

    .line 340
    goto/16 :goto_1

    .line 348
    .end local v1    # "headerBits":I
    .end local v2    # "headerSeptets":I
    .end local v4    # "udh":[B
    .end local v5    # "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v6    # "userDataHeaderLength":I
    :cond_2
    iput v9, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 349
    iput v7, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 350
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    goto/16 :goto_2
.end method

.method public gsmSubmitGetTpDcs()I
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public gsmSubmitHasUserDataHeader()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setEncoding(I)V
    .locals 0
    .param p1, "encoding"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    .line 114
    return-void
.end method
