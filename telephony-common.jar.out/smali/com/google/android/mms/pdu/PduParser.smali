.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = true

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static final UNSIGNED_INT_LIMIT:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mForRestore:Z

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 84
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 89
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 74
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 79
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 2368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mms/pdu/PduParser;->mForRestore:Z

    .line 112
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 113
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 114
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 38
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 2122
    if-nez p0, :cond_0

    .line 2123
    const/16 v35, 0x0

    .line 2360
    :goto_0
    return v35

    .line 2127
    :cond_0
    const/16 v35, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 2130
    .local v8, "messageType":I
    const/16 v35, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 2131
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 2133
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: PDU hasn\'t mmsVersion"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const/16 v35, 0x0

    goto :goto_0

    .line 2138
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2356
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: Parser doesn\'t support this message type in this version"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/16 v35, 0x0

    goto :goto_0

    .line 2141
    :pswitch_0
    const/16 v35, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 2142
    .local v34, "srContentType":[B
    if-nez v34, :cond_13

    .line 2143
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_REQ PDU hasn\'t content type field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const/16 v35, 0x0

    goto :goto_0

    .line 2165
    .end local v34    # "srContentType":[B
    :pswitch_1
    const/16 v35, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 2166
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_2

    .line 2167
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_CONF PDU hasn\'t Response-Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const/16 v35, 0x0

    goto :goto_0

    .line 2172
    :cond_2
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 2173
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_13

    .line 2174
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_CONF PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    const/16 v35, 0x0

    goto :goto_0

    .line 2181
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v35, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 2182
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_3

    .line 2183
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Content-Location field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2188
    :cond_3
    const/16 v35, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v12

    .line 2189
    .local v12, "niExpiry":J
    const-wide/16 v36, -0x1

    cmp-long v35, v36, v12

    if-nez v35, :cond_4

    .line 2190
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Expiry field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2195
    :cond_4
    const/16 v35, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v11

    .line 2196
    .local v11, "niMessageClass":[B
    if-nez v11, :cond_5

    .line 2197
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Message-Class field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2202
    :cond_5
    const/16 v35, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 2203
    .local v14, "niMessageSize":J
    const-wide/16 v36, -0x1

    cmp-long v35, v36, v14

    if-nez v35, :cond_6

    .line 2204
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Message-Size field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2209
    :cond_6
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 2210
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_13

    .line 2211
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2218
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niMessageClass":[B
    .end local v12    # "niExpiry":J
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v35, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 2219
    .local v17, "nriStatus":I
    if-nez v17, :cond_7

    .line 2220
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFYRESP_IND PDU hasn\'t Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2225
    :cond_7
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 2226
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_13

    .line 2227
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFYRESP_IND PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2234
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v35, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 2235
    .local v19, "rcContentType":[B
    if-nez v19, :cond_8

    .line 2236
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_RETRIEVE_CONF PDU hasn\'t Content-Type field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2241
    :cond_8
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 2242
    .local v20, "rcDate":J
    const-wide/16 v36, -0x1

    cmp-long v35, v36, v20

    if-nez v35, :cond_13

    .line 2243
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_RETRIEVE_CONF PDU hasn\'t Date field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2250
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 2251
    .local v4, "diDate":J
    const-wide/16 v36, -0x1

    cmp-long v35, v36, v4

    if-nez v35, :cond_9

    .line 2252
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Date field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2257
    :cond_9
    const/16 v35, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2258
    .local v3, "diMessageId":[B
    if-nez v3, :cond_a

    .line 2259
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Message-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2264
    :cond_a
    const/16 v35, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 2265
    .local v6, "diStatus":I
    if-nez v6, :cond_b

    .line 2266
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2271
    :cond_b
    const/16 v35, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 2272
    .local v7, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_13

    .line 2273
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t To field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2280
    .end local v3    # "diMessageId":[B
    .end local v4    # "diDate":J
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 2281
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_13

    .line 2282
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_ACKNOWLEDGE_IND PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2289
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2290
    .local v22, "roDate":J
    const-wide/16 v36, -0x1

    cmp-long v35, v36, v22

    if-nez v35, :cond_c

    .line 2291
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Date field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2296
    :cond_c
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 2297
    .local v24, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_d

    .line 2298
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t From field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2303
    :cond_d
    const/16 v35, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2304
    .local v25, "roMessageId":[B
    if-nez v25, :cond_e

    .line 2305
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Message-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2310
    :cond_e
    const/16 v35, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2311
    .local v26, "roReadStatus":I
    if-nez v26, :cond_f

    .line 2312
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Read-Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2317
    :cond_f
    const/16 v35, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2318
    .local v27, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_13

    .line 2319
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t To field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2326
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2327
    .local v28, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_10

    .line 2328
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t From field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2333
    :cond_10
    const/16 v35, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2334
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_11

    .line 2335
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t Message-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2340
    :cond_11
    const/16 v35, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2341
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_12

    .line 2342
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t Read-Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2347
    :cond_12
    const/16 v35, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2348
    .local v31, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_13

    .line 2349
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t To field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2360
    .end local v28    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_13
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 2138
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2086
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2087
    :cond_0
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 2112
    :cond_1
    :goto_0
    return v2

    .line 2093
    :cond_2
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 2094
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 2095
    .local v0, "contentId":[B
    if-eqz v0, :cond_3

    .line 2096
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 2097
    goto :goto_0

    .line 2103
    .end local v0    # "contentId":[B
    :cond_3
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 2104
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 2105
    .local v1, "contentType":[B
    if-eqz v1, :cond_1

    .line 2106
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 2107
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1431
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1432
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1433
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1434
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    .line 1397
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1398
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1399
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1400
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1401
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1403
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1404
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1405
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1413
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1414
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1408
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1409
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1417
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1418
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1421
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1381
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1392
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1385
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1392
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1385
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 1337
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1362
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1341
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1362
    const/4 v0, 0x1

    goto :goto_0

    .line 1341
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1156
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1780
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1782
    :cond_0
    const/4 v0, 0x0

    .line 1783
    .local v0, "contentType":[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1784
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1785
    .local v8, "temp":I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1786
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1788
    and-int/lit16 v1, v8, 0xff

    .line 1790
    .local v1, "cur":I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_7

    .line 1791
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1792
    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1793
    .local v7, "startPos":I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1794
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1795
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1796
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1797
    and-int/lit16 v3, v8, 0xff

    .line 1799
    .local v3, "first":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_4

    .line 1800
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1815
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1816
    .local v2, "endPos":I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1817
    .local v6, "parameterLen":I
    if-lez v6, :cond_3

    .line 1818
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1821
    :cond_3
    if-gez v6, :cond_8

    .line 1822
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1832
    .end local v2    # "endPos":I
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v6    # "parameterLen":I
    .end local v7    # "startPos":I
    :goto_1
    return-object v9

    .line 1801
    .restart local v3    # "first":I
    .restart local v5    # "length":I
    .restart local v7    # "startPos":I
    :cond_4
    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    .line 1802
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1804
    .local v4, "index":I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    .line 1805
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1807
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1808
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 1811
    .end local v4    # "index":I
    :cond_6
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_1

    .line 1825
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_7
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    .line 1826
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v9, v0

    .line 1832
    goto :goto_1

    .line 1828
    :cond_9
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 24
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1564
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v22, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v22, :cond_0

    if-nez p0, :cond_0

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 1565
    :cond_0
    sget-boolean v22, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v22, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-gtz v22, :cond_1

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 1567
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1568
    .local v19, "startPos":I
    const/16 v20, 0x0

    .line 1569
    .local v20, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1570
    .local v14, "lastLen":I
    :goto_0
    if-lez v14, :cond_10

    .line 1571
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 1572
    .local v16, "param":I
    sget-boolean v22, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v22, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v22

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 1573
    :cond_2
    add-int/lit8 v14, v14, -0x1

    .line 1575
    packed-switch v16, :pswitch_data_0

    .line 1751
    :pswitch_0
    const/16 v22, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 1752
    const-string v22, "PduParser"

    const-string v23, "Corrupt Content-Type"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1591
    :pswitch_1
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1592
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 1593
    .local v11, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1594
    const/16 v22, 0x7f

    move/from16 v0, v22

    if-le v11, v0, :cond_4

    .line 1596
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v13

    .line 1598
    .local v13, "index":I
    sget-object v22, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_3

    .line 1599
    sget-object v22, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v22, v22, v13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 1600
    .local v21, "type":[B
    const/16 v22, 0x83

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    .end local v13    # "index":I
    .end local v21    # "type":[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1613
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1614
    goto :goto_0

    .line 1606
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v21

    .line 1607
    .restart local v21    # "type":[B
    if-eqz v21, :cond_3

    if-eqz p1, :cond_3

    .line 1608
    const/16 v22, 0x83

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1631
    .end local v11    # "first":I
    .end local v21    # "type":[B
    :pswitch_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v18

    .line 1632
    .local v18, "start":[B
    if-eqz v18, :cond_5

    if-eqz p1, :cond_5

    .line 1633
    const/16 v22, 0x99

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1637
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1638
    goto/16 :goto_0

    .line 1655
    .end local v18    # "start":[B
    :pswitch_3
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1656
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 1657
    .local v12, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1659
    const/16 v22, 0x20

    move/from16 v0, v22

    if-le v12, v0, :cond_6

    const/16 v22, 0x7f

    move/from16 v0, v22

    if-lt v12, v0, :cond_7

    :cond_6
    if-nez v12, :cond_9

    .line 1662
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1664
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v5

    .line 1666
    .local v5, "charsetInt":I
    const-string v22, "PduParser"

    const-string v23, "Parse CharacterSets: charsetStr"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/16 v22, 0x81

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    .end local v5    # "charsetInt":I
    .end local v6    # "charsetStr":[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1683
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1684
    goto/16 :goto_0

    .line 1668
    .restart local v6    # "charsetStr":[B
    :catch_0
    move-exception v9

    .line 1670
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    const-string v22, "PduParser"

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    const/16 v22, 0x81

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1675
    .end local v6    # "charsetStr":[B
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v4, v0

    .line 1676
    .local v4, "charset":I
    if-eqz p1, :cond_8

    .line 1677
    const-string v22, "PduParser"

    const-string v23, "Parse Well-known-charset: charset"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const/16 v22, 0x81

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1696
    .end local v4    # "charset":I
    .end local v12    # "firstValue":I
    :pswitch_4
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 1697
    .local v15, "name":[B
    if-eqz v15, :cond_a

    if-eqz p1, :cond_a

    .line 1698
    const/16 v22, 0x97

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1702
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1703
    goto/16 :goto_0

    .line 1706
    .end local v15    # "name":[B
    :pswitch_5
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v10

    .line 1707
    .local v10, "fileName":[B
    if-eqz v10, :cond_b

    if-eqz p1, :cond_b

    .line 1708
    const/16 v22, 0x98

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1712
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1713
    goto/16 :goto_0

    .line 1716
    .end local v10    # "fileName":[B
    :pswitch_6
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 1717
    .local v17, "path":[B
    if-eqz v17, :cond_c

    if-eqz p1, :cond_c

    .line 1718
    const/16 v22, 0x9d

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1722
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1723
    goto/16 :goto_0

    .line 1726
    .end local v17    # "path":[B
    :pswitch_7
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v7

    .line 1727
    .local v7, "comment":[B
    if-eqz v7, :cond_d

    if-eqz p1, :cond_d

    .line 1728
    const/16 v22, 0x9b

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1732
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1733
    goto/16 :goto_0

    .line 1736
    .end local v7    # "comment":[B
    :pswitch_8
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v8

    .line 1737
    .local v8, "domain":[B
    if-eqz v8, :cond_e

    if-eqz p1, :cond_e

    .line 1738
    const/16 v22, 0x9c

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1742
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v23, v19, v20

    sub-int v14, v22, v23

    .line 1743
    goto/16 :goto_0

    .line 1754
    .end local v8    # "domain":[B
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1760
    .end local v16    # "param":I
    :cond_10
    if-eqz v14, :cond_11

    .line 1761
    const-string v22, "PduParser"

    const-string v23, "Corrupt Content-Type"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_11
    return-void

    .line 1575
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1232
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1233
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1234
    const/4 v3, 0x0

    .line 1235
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1236
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1237
    .local v5, "temp":I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1238
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 1239
    .local v2, "first":I
    if-nez v2, :cond_2

    .line 1241
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 1263
    :goto_0
    return-object v7

    .line 1244
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1245
    const/16 v7, 0x20

    if-ge v2, v7, :cond_3

    .line 1246
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1248
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1251
    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1254
    .local v6, "textString":[B
    if-eqz v0, :cond_4

    .line 1255
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1263
    goto :goto_0

    .line 1257
    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1259
    :catch_0
    move-exception v1

    .line 1260
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1506
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1507
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1508
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1509
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1510
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1511
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1512
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v2, v1

    .line 1514
    :goto_0
    return-wide v2

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    .line 1474
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1475
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1476
    .local v4, "temp":I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v8, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1477
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1479
    .local v0, "count":I
    if-le v0, v9, :cond_2

    .line 1480
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1483
    :cond_2
    const-wide/16 v2, 0x0

    .line 1485
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1486
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1487
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v8, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1488
    :cond_3
    shl-long/2addr v2, v9

    .line 1489
    and-int/lit16 v5, v4, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 1485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1492
    :cond_4
    return-wide v2
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1451
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1452
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1453
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1454
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    .line 1170
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1171
    :cond_0
    const/4 v0, 0x0

    .line 1172
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1173
    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1189
    :goto_0
    return v2

    .line 1177
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 1178
    shl-int/lit8 v0, v0, 0x7

    .line 1179
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1180
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1181
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1182
    goto :goto_0

    .line 1186
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 1187
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1189
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1207
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1208
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1209
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1210
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 1212
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 1215
    .end local v0    # "first":I
    :goto_0
    return v0

    .line 1214
    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 1215
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1218
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1275
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1293
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1296
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1297
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1298
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1301
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1316
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1302
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1305
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1308
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    .line 1526
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1527
    :cond_0
    new-array v0, p1, [B

    .line 1528
    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1529
    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    .line 1530
    const/4 v1, -0x1

    .line 1532
    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 29

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 124
    const-string v26, "PduParser"

    const-string v27, "Input parse stream is null"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v20, 0x0

    .line 308
    :cond_0
    :goto_0
    return-object v20

    .line 129
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 132
    const-string v26, "PduParser"

    const-string v27, "Parse PduHeader Failed"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/16 v20, 0x0

    goto :goto_0

    .line 137
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    const/16 v27, 0x8c

    invoke-virtual/range {v26 .. v27}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v12

    .line 140
    .local v12, "messageType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 141
    const-string v26, "check mandatory headers failed!"

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 142
    const/16 v20, 0x0

    goto :goto_0

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 148
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 149
    const/16 v26, 0x84

    move/from16 v0, v26

    if-ne v0, v12, :cond_6

    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v7, v0, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    const/16 v27, 0x84

    invoke-virtual/range {v26 .. v27}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 151
    .local v5, "contentType":[B
    if-nez v5, :cond_4

    .line 152
    const-string v26, "PduParser"

    const-string v27, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _0"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 155
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 156
    .local v6, "contentTypeStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 157
    const-string v26, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 161
    const-string v26, "text/plain"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 162
    const-string v26, "PduParser"

    const-string v27, "Content Type is text/plain"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v25, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 165
    .local v25, "theOnlyPart":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 168
    const-string v26, "<part1>"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 172
    const/16 v17, 0x0

    .line 173
    .local v17, "partDataLen":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 174
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 177
    :cond_5
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 178
    .local v16, "partData":[B
    const-string v26, "PduParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "got part length: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 181
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 182
    .local v24, "showData":Ljava/lang/String;
    const-string v26, "PduParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "show data: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 185
    const-string v26, "PduParser"

    const-string v27, "setData finish"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v15, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 187
    .local v15, "onlyPartBody":Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 188
    const/16 v20, 0x0

    .line 190
    .local v20, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :try_start_0
    new-instance v21, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v15}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .local v21, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    move-object/from16 v20, v21

    .line 194
    .end local v21    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v20    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_2
    if-nez v20, :cond_0

    .line 195
    const-string v26, "PduParser"

    const-string v27, "retrieveConf is null"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v10

    .line 192
    .local v10, "e":Ljava/lang/Exception;
    const-string v26, "PduParser"

    const-string v27, "new RetrieveConf has exception"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 205
    .end local v5    # "contentType":[B
    .end local v6    # "contentTypeStr":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "onlyPartBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v16    # "partData":[B
    .end local v17    # "partDataLen":I
    .end local v20    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v24    # "showData":Ljava/lang/String;
    .end local v25    # "theOnlyPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_6
    const/16 v26, 0x80

    move/from16 v0, v26

    if-eq v0, v12, :cond_7

    const/16 v26, 0x84

    move/from16 v0, v26

    if-ne v0, v12, :cond_8

    .line 208
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    .line 211
    const-string v26, "PduParser"

    const-string v27, "Parse parts Failed"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 216
    :cond_8
    packed-switch v12, :pswitch_data_0

    .line 307
    const-string v26, "Parser doesn\'t support this message type in this version!"

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 308
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 221
    :pswitch_0
    new-instance v23, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v23, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v20, v23

    .line 222
    goto/16 :goto_0

    .line 227
    .end local v23    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v22, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v22, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    move-object/from16 v20, v22

    .line 228
    goto/16 :goto_0

    .line 233
    .end local v22    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v13, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v13, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v20, v13

    .line 235
    goto/16 :goto_0

    .line 240
    .end local v13    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v14, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v14, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object/from16 v20, v14

    .line 242
    goto/16 :goto_0

    .line 247
    .end local v14    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v20, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 250
    .restart local v20    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v5

    .line 251
    .restart local v5    # "contentType":[B
    if-nez v5, :cond_9

    .line 252
    const-string v26, "PduParser"

    const-string v27, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _1"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 255
    :cond_9
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    .line 257
    .local v8, "ctTypeStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 259
    const-string v26, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    const-string v26, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    const-string v26, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    const-string v26, "text/plain"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 268
    const-string v26, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 272
    .local v11, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    .line 276
    .end local v11    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_a
    const-string v26, "PduParser"

    const-string v27, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _2"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 282
    .end local v5    # "contentType":[B
    .end local v8    # "ctTypeStr":Ljava/lang/String;
    .end local v20    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v9, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    move-object/from16 v20, v9

    .line 284
    goto/16 :goto_0

    .line 289
    .end local v9    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v4, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v4, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object/from16 v20, v4

    .line 291
    goto/16 :goto_0

    .line 296
    .end local v4    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v18, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v18, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object/from16 v20, v18

    .line 298
    goto/16 :goto_0

    .line 303
    .end local v18    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v19, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v19, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    move-object/from16 v20, v19

    .line 305
    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public parse(Z)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1
    .param p1, "forRestore"    # Z

    .prologue
    .line 2370
    iput-boolean p1, p0, Lcom/google/android/mms/pdu/PduParser;->mForRestore:Z

    .line 2371
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 32
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 417
    if-nez p1, :cond_1

    .line 418
    const/4 v12, 0x0

    .line 1018
    :cond_0
    :goto_0
    return-object v12

    .line 421
    :cond_1
    const/4 v13, 0x1

    .line 422
    .local v13, "keepParsing":Z
    new-instance v12, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 424
    .local v12, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_0

    .line 425
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 426
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 428
    .local v11, "headerField":I
    const/16 v28, 0x20

    move/from16 v0, v28

    if-lt v11, v0, :cond_3

    const/16 v28, 0x7f

    move/from16 v0, v28

    if-gt v11, v0, :cond_3

    .line 429
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 430
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 435
    .local v5, "bVal":[B
    goto :goto_1

    .line 437
    .end local v5    # "bVal":[B
    :cond_3
    packed-switch v11, :pswitch_data_0

    .line 1013
    :pswitch_0
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 444
    .local v17, "messageType":I
    packed-switch v17, :pswitch_data_1

    .line 465
    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 466
    :catch_0
    move-exception v7

    .line 467
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 469
    const/4 v12, 0x0

    goto :goto_0

    .line 461
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const-string v28, "PduParser"

    const-string v29, "PduParser: parseHeaders: We don\'t support these kind of messages now."

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v12, 0x0

    goto :goto_0

    .line 470
    :catch_1
    move-exception v7

    .line 471
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 472
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 505
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 512
    .local v26, "value":I
    :try_start_1
    move/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 513
    :catch_2
    move-exception v7

    .line 514
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 516
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 517
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v7

    .line 518
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 519
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 530
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 538
    .local v26, "value":J
    const/16 v28, 0x85

    move/from16 v0, v28

    if-ne v11, v0, :cond_4

    .line 539
    const/16 v28, 0xc9

    move-wide/from16 v0, v26

    move/from16 v2, v28

    invoke-virtual {v12, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/mms/pdu/PduParser;->mForRestore:Z

    move/from16 v28, v0

    if-nez v28, :cond_4

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v26, v28, v30

    .line 545
    :cond_4
    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 546
    .end local v26    # "value":J
    :catch_4
    move-exception v7

    .line 547
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 548
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 559
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 564
    .restart local v26    # "value":J
    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 565
    .end local v26    # "value":J
    :catch_5
    move-exception v7

    .line 566
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 567
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 593
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v26

    .line 594
    .local v26, "value":[B
    if-eqz v26, :cond_2

    .line 600
    :try_start_4
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 601
    :catch_6
    move-exception v7

    .line 602
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 603
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v7

    .line 604
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 605
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 621
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 623
    .local v26, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_2

    .line 629
    :try_start_5
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 630
    :catch_8
    move-exception v7

    .line 631
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 632
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v7

    .line 633
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 634
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 645
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 647
    .restart local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_2

    .line 648
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 649
    .local v4, "address":[B
    if-eqz v4, :cond_6

    .line 650
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 655
    .local v21, "str":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 656
    .local v8, "endIndex":I
    if-lez v8, :cond_5

    .line 657
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 660
    :cond_5
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 668
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 669
    :catch_a
    move-exception v7

    .line 670
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "endIndex":I
    .restart local v21    # "str":Ljava/lang/String;
    :catch_b
    move-exception v7

    .line 662
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 663
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 671
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :catch_c
    move-exception v7

    .line 672
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 673
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 686
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 689
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 694
    .local v24, "token":I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v22

    .line 699
    .local v22, "timeValue":J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    .line 710
    :cond_7
    :try_start_9
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 711
    :catch_d
    move-exception v7

    .line 712
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 713
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 695
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "timeValue":J
    :catch_e
    move-exception v7

    .line 696
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 697
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 723
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "token":I
    :pswitch_a
    const/4 v9, 0x0

    .line 724
    .local v9, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 727
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 730
    .local v10, "fromToken":I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v10, :cond_a

    .line 732
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 733
    if-eqz v9, :cond_9

    .line 734
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 735
    .restart local v4    # "address":[B
    if-eqz v4, :cond_9

    .line 736
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 737
    .restart local v21    # "str":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 738
    .restart local v8    # "endIndex":I
    if-lez v8, :cond_8

    .line 739
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 742
    :cond_8
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 764
    .end local v4    # "address":[B
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_9
    :goto_2
    const/16 v28, 0x89

    :try_start_b
    move/from16 v0, v28

    invoke-virtual {v12, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 765
    :catch_f
    move-exception v7

    .line 766
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 743
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "address":[B
    .restart local v8    # "endIndex":I
    .restart local v21    # "str":Ljava/lang/String;
    :catch_10
    move-exception v7

    .line 744
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 745
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 751
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_a
    :try_start_c
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 753
    .end local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v7

    .line 754
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 755
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 767
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v7

    .line 768
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 769
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 776
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10    # "fromToken":I
    :pswitch_b
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 777
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 783
    .local v15, "messageClass":I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v15, v0, :cond_e

    .line 786
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v15, :cond_b

    .line 787
    :try_start_d
    const-string v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 803
    :catch_13
    move-exception v7

    .line 804
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 790
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :cond_b
    const/16 v28, 0x81

    move/from16 v0, v28

    if-ne v0, v15, :cond_c

    .line 791
    :try_start_e
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 805
    :catch_14
    move-exception v7

    .line 806
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 807
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 794
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_c
    const/16 v28, 0x82

    move/from16 v0, v28

    if-ne v0, v15, :cond_d

    .line 795
    :try_start_f
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 798
    :cond_d
    const/16 v28, 0x83

    move/from16 v0, v28

    if-ne v0, v15, :cond_2

    .line 799
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    .line 811
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 812
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 813
    .local v16, "messageClassString":[B
    if-eqz v16, :cond_2

    .line 815
    const/16 v28, 0x8a

    :try_start_10
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 816
    :catch_15
    move-exception v7

    .line 817
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 818
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v7

    .line 819
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 820
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 828
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "messageClass":I
    .end local v16    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 835
    .local v25, "version":I
    const/16 v28, 0x8d

    :try_start_11
    move/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    .line 836
    :catch_17
    move-exception v7

    .line 837
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 839
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 840
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v7

    .line 841
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 842
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 851
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "version":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 855
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 862
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 864
    .local v20, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_2

    .line 870
    const/16 v28, 0xa0

    :try_start_13
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 872
    :catch_19
    move-exception v7

    .line 873
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 856
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v20    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v7

    .line 857
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 858
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 874
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v7

    .line 875
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 876
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 886
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 890
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 898
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 903
    .local v18, "perviouslySentDate":J
    const/16 v28, 0xa1

    move-wide/from16 v0, v18

    move/from16 v2, v28

    invoke-virtual {v12, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .line 905
    .end local v18    # "perviouslySentDate":J
    :catch_1c
    move-exception v7

    .line 906
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 907
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 891
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v7

    .line 892
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 893
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 924
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 927
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 930
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 946
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 949
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 953
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 954
    :catch_1e
    move-exception v7

    .line 955
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 956
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 968
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 976
    :pswitch_12
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 981
    .local v6, "contentType":[B
    if-eqz v6, :cond_f

    .line 987
    const/16 v28, 0x84

    :try_start_17
    move/from16 v0, v28

    invoke-virtual {v12, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 997
    :cond_f
    :goto_3
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 1000
    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 1002
    const/4 v13, 0x0

    .line 1003
    goto/16 :goto_1

    .line 988
    :catch_1f
    move-exception v7

    .line 989
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 990
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_20
    move-exception v7

    .line 991
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 992
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 444
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 24
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .prologue
    .line 1845
    sget-boolean v20, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v20, :cond_0

    if-nez p1, :cond_0

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 1846
    :cond_0
    sget-boolean v20, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v20, :cond_1

    if-nez p2, :cond_1

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 1847
    :cond_1
    sget-boolean v20, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v20, :cond_2

    if-gtz p3, :cond_2

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 1865
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1866
    .local v10, "startPos":I
    const/4 v13, 0x0

    .line 1867
    .local v13, "tempPos":I
    move/from16 v8, p3

    .line 1868
    .local v8, "lastLen":I
    :cond_3
    :goto_0
    if-lez v8, :cond_17

    .line 1869
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1870
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 1871
    .local v6, "header":I
    sget-boolean v20, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v20, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_4

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 1872
    :cond_4
    add-int/lit8 v8, v8, -0x1

    .line 1874
    const/16 v20, 0x7f

    move/from16 v0, v20

    if-le v6, v0, :cond_e

    .line 1876
    sparse-switch v6, :sswitch_data_0

    .line 1984
    const/16 v20, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 1985
    const-string v20, "PduParser"

    const-string v21, "Corrupt Part headers"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/16 v20, 0x0

    .line 2075
    .end local v6    # "header":I
    :goto_1
    return v20

    .line 1882
    .restart local v6    # "header":I
    :sswitch_0
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1883
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_5

    .line 1884
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1887
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1888
    sub-int v20, v10, v13

    sub-int v8, p3, v20

    .line 1889
    goto :goto_0

    .line 1895
    .end local v3    # "contentLocation":[B
    :sswitch_1
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1896
    .local v2, "contentId":[B
    if-eqz v2, :cond_6

    .line 1897
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1900
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1901
    sub-int v20, v10, v13

    sub-int v8, p3, v20

    .line 1902
    goto :goto_0

    .line 1905
    .end local v2    # "contentId":[B
    :sswitch_2
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v19

    .line 1906
    .local v19, "xWapContentUri":[B
    if-eqz v19, :cond_7

    .line 1907
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setXWapContentUri([B)V

    .line 1910
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1911
    sub-int v20, v10, v13

    sub-int v8, p3, v20

    .line 1913
    goto/16 :goto_0

    .line 1915
    .end local v19    # "xWapContentUri":[B
    :sswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 1916
    .local v4, "date":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v4, v20, v22

    .line 1917
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/PduPart;->setDate(J)V

    .line 1919
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1920
    sub-int v20, v10, v13

    sub-int v8, p3, v20

    .line 1921
    goto/16 :goto_0

    .line 1938
    .end local v4    # "date":J
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1939
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1940
    .local v9, "len":I
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1941
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1942
    .local v16, "thisStartPos":I
    const/4 v15, 0x0

    .line 1943
    .local v15, "thisEndPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v18

    .line 1945
    .local v18, "value":I
    const/16 v20, 0x80

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1946
    sget-object v20, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1959
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1960
    sub-int v20, v16, v15

    move/from16 v0, v20

    if-ge v0, v9, :cond_9

    .line 1961
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v18

    .line 1962
    const/16 v20, 0x98

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1963
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1968
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1969
    sub-int v20, v16, v15

    move/from16 v0, v20

    if-ge v0, v9, :cond_9

    .line 1970
    sub-int v20, v16, v15

    sub-int v7, v9, v20

    .line 1971
    .local v7, "last":I
    new-array v11, v7, [B

    .line 1972
    .local v11, "temp":[B
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1976
    .end local v7    # "last":I
    .end local v11    # "temp":[B
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1977
    sub-int v20, v10, v13

    sub-int v8, p3, v20

    .line 1978
    goto/16 :goto_0

    .line 1947
    :cond_a
    const/16 v20, 0x81

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1948
    sget-object v20, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1949
    :cond_b
    const/16 v20, 0x82

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1950
    sget-object v20, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1952
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1954
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_2

    .line 1988
    .end local v9    # "len":I
    .end local v15    # "thisEndPos":I
    .end local v16    # "thisStartPos":I
    .end local v18    # "value":I
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1991
    :cond_e
    const/16 v20, 0x20

    move/from16 v0, v20

    if-lt v6, v0, :cond_15

    const/16 v20, 0x7f

    move/from16 v0, v20

    if-gt v6, v0, :cond_15

    .line 1994
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1996
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    .line 1997
    .local v12, "tempHeader":[B
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1999
    .local v14, "tempValue":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([B)V

    .line 2001
    .local v17, "unAssignedHeader":Ljava/lang/String;
    const-string v20, "PduParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Got unknown header field: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    if-eqz v14, :cond_14

    .line 2004
    const-string v20, "PduParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Got unknown header tempValue: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :goto_3
    const/16 v20, 0x1

    const-string v21, "Content-Transfer-Encoding"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2012
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 2017
    :cond_f
    const/16 v20, 0x1

    const-string v21, "Content-ID"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 2019
    if-eqz v14, :cond_10

    .line 2020
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 2027
    :cond_10
    const/16 v20, 0x1

    const-string v21, "Content-Location"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 2029
    if-eqz v14, :cond_11

    .line 2030
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 2037
    :cond_11
    const/16 v20, 0x1

    const-string v21, "Content-Disposition"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 2039
    if-eqz v14, :cond_12

    .line 2040
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 2047
    :cond_12
    const/16 v20, 0x1

    const-string v21, "Name"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 2049
    if-eqz v14, :cond_13

    .line 2050
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 2055
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 2056
    sub-int v20, v10, v13

    sub-int v8, p3, v20

    .line 2057
    goto/16 :goto_0

    .line 2006
    :cond_14
    const-string v20, "PduParser"

    const-string v21, "tempValue is null "

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2062
    .end local v12    # "tempHeader":[B
    .end local v14    # "tempValue":[B
    .end local v17    # "unAssignedHeader":Ljava/lang/String;
    :cond_15
    const/16 v20, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 2063
    const-string v20, "PduParser"

    const-string v21, "Corrupt Part headers"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2066
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2070
    .end local v6    # "header":I
    :cond_17
    if-eqz v8, :cond_18

    .line 2071
    const-string v20, "PduParser"

    const-string v21, "Corrupt Part headers"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2075
    :cond_18
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 1876
    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0x92 -> :sswitch_3
        0xae -> :sswitch_4
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_4
    .end sparse-switch
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 26
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1028
    if-nez p1, :cond_1

    .line 1029
    const/4 v4, 0x0

    .line 1144
    :cond_0
    :goto_0
    return-object v4

    .line 1032
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1033
    .local v8, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 1035
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v8, :cond_0

    .line 1036
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 1037
    .local v12, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1038
    .local v9, "dataLength":I
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1039
    .local v16, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v22

    .line 1040
    .local v22, "startPos":I
    if-gtz v22, :cond_2

    .line 1042
    const-string v23, "PduParser"

    const-string v24, "PduParser: parseParts: Invalid part."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v4, 0x0

    goto :goto_0

    .line 1047
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1048
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 1049
    .local v7, "contentType":[B
    if-eqz v7, :cond_5

    .line 1050
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1056
    :goto_2
    const/16 v23, 0x97

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v15, v23

    check-cast v15, [B

    .line 1057
    .local v15, "name":[B
    if-eqz v15, :cond_3

    .line 1058
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 1062
    :cond_3
    const/16 v23, 0x81

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1063
    .local v5, "charset":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 1064
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1068
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 1069
    .local v11, "endPos":I
    sub-int v23, v22, v11

    sub-int v20, v12, v23

    .line 1070
    .local v20, "partHeaderLen":I
    if-lez v20, :cond_6

    .line 1071
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1073
    const-string v23, "PduParser"

    const-string v24, "PduParser: parseParts: Parse part header faild."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1052
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v11    # "endPos":I
    .end local v15    # "name":[B
    .end local v20    # "partHeaderLen":I
    :cond_5
    sget-object v23, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 1076
    .restart local v5    # "charset":Ljava/lang/Integer;
    .restart local v11    # "endPos":I
    .restart local v15    # "name":[B
    .restart local v20    # "partHeaderLen":I
    :cond_6
    if-gez v20, :cond_7

    .line 1078
    const-string v23, "PduParser"

    const-string v24, "PduParser: parseParts: Invalid length of content-type"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1085
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v23

    if-nez v23, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v23

    if-nez v23, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v23

    if-nez v23, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v23

    if-nez v23, :cond_8

    .line 1089
    const-string v23, "PduParser"

    const-string v24, "PduParser: parseParts: Hasn\'t find ContentLocation,so generate one."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1095
    :cond_8
    if-lez v9, :cond_a

    .line 1096
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 1097
    .local v18, "partData":[B
    new-instance v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1100
    .local v17, "partContentType":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v21

    .line 1101
    .local v21, "readLen":I
    move/from16 v0, v21

    if-eq v0, v9, :cond_9

    .line 1102
    const-string v23, "PduParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "len="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " readLen="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1106
    :cond_9
    const-string v23, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1108
    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 1110
    .local v6, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 1135
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    .end local v21    # "readLen":I
    :cond_a
    :goto_3
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v23

    if-nez v23, :cond_f

    .line 1137
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 1035
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1113
    .restart local v17    # "partContentType":Ljava/lang/String;
    .restart local v18    # "partData":[B
    .restart local v21    # "readLen":I
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v19

    .line 1114
    .local v19, "partDataEncoding":[B
    if-eqz v19, :cond_c

    .line 1115
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1116
    .local v10, "encoding":Ljava/lang/String;
    const-string v23, "base64"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1118
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v18

    .line 1126
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_c
    :goto_5
    if-nez v18, :cond_e

    .line 1127
    const-string v23, "Decode part data error!"

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1128
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1119
    .restart local v10    # "encoding":Ljava/lang/String;
    :cond_d
    const-string v23, "quoted-printable"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1121
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v18

    goto :goto_5

    .line 1130
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 1140
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    .end local v19    # "partDataEncoding":[B
    .end local v21    # "readLen":I
    :cond_f
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4
.end method

.method public parseWappush(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 9
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "transactionId1"    # I
    .param p3, "href"    # Ljava/lang/String;
    .param p4, "NotifyText"    # Ljava/lang/String;
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "messageId"    # Ljava/lang/String;
    .param p7, "createdTime"    # J
    .param p9, "expired"    # J

    .prologue
    .line 335
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v4, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWappushHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 342
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v4, :cond_1

    .line 343
    const-string v4, "mHeaders is null!"

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "have get the header:parseWappush ref:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NotifyText"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 350
    :try_start_0
    const-string v4, "have get the header:parseWappush1 "

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 352
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 353
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v5, 0xa0

    const/16 v6, 0x8c

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 360
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x83

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 363
    if-eqz p6, :cond_3

    .line 364
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x8b

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 367
    :cond_3
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x98

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 368
    const-string v4, "have get the header:parseWappush9 "

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 371
    if-eqz p4, :cond_4

    .line 372
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, p4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x96

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 376
    :cond_4
    if-eqz p5, :cond_5

    .line 377
    const-string v4, "have get the header:parseWappush11 "

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 378
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, p5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x89

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 382
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-nez v4, :cond_9

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 384
    .local v2, "currentDate":J
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v5, 0x85

    invoke-virtual {v4, v2, v3, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 390
    .end local v2    # "currentDate":J
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, p9, v4

    if-eqz v4, :cond_6

    .line 391
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-wide/16 v6, 0x3e8

    div-long v6, p9, v6

    const/16 v5, 0x88

    invoke-virtual {v4, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 401
    :cond_6
    new-instance v0, Lcom/google/android/mms/pdu/WapPushPdu;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v4}, Lcom/google/android/mms/pdu/WapPushPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 402
    .local v0, "PushPdu":Lcom/google/android/mms/pdu/WapPushPdu;
    if-nez v0, :cond_7

    .line 403
    const-string v4, "PushPdu == null!!"

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 406
    :cond_7
    const-string v4, "PduParser"

    const-string v5, "parseWappush2"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 354
    .end local v0    # "PushPdu":Lcom/google/android/mms/pdu/WapPushPdu;
    :cond_8
    :try_start_1
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v5, 0xa1

    const/16 v6, 0x8c

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 356
    const-string v4, "have get the header:parseWappush6 "

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set invalid mimeType value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 387
    .end local v1    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_9
    :try_start_2
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-wide/16 v6, 0x3e8

    div-long v6, p7, v6

    const/16 v5, 0x85

    invoke-virtual {v4, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 396
    :catch_1
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 398
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected parseWappushHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 4
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    const-string v1, "huangqinbo"

    const-string v2, "pduDataStream == null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    .line 323
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 324
    .local v0, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    const-string v2, "parseWappushHeaders"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headers is null? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
